import os
import sys
import subprocess
import time

timeoutSecs = 600

logDir = "./log"
if not os.path.isdir(logDir):
    os.makedirs(logDir)
print(f"--- Logs at {os.path.abspath(logDir)}.")
CheckCmd = "Check.sh"   # Note: you must make Check.sh in PATH to use it in shell

def testDir(dirName):
    print(f"Processing {dirName}...")
    # init -- get main and properties
    p4program = None
    properties = []
    for fname in os.listdir(dirName):
        fullPath = os.path.join(dirName, fname)
        if fname == "main.p4":
            p4program = fullPath
            print(f"P4 file: {fname}")
        elif fname.endswith(".p4ltl") and not fname.startswith("spec"): 
            properties.append(fname)
            print(f"P4ltl file: {fname}")
        # endif
    # endfor
    if properties:
        # make log dir
        testLogDir = os.path.join(logDir, dirName)
        if not os.path.isdir(testLogDir):
            os.makedirs(testLogDir)

        for property in properties:
            
            if not p4program:
                if property.find('#') == -1:
                    continue
                p4program = os.path.join(dirName, property.split('#')[0] + ".p4")
            # endif

            logFile = os.path.join(testLogDir, os.path.splitext(property)[0] + ".log")
            propertyFile = os.path.join(dirName, property)
            execCmd = f"{CheckCmd} {p4program} {propertyFile}"
            print(f"---- {execCmd}")
            start = time.time()
            try:
                outProcess = subprocess.run(execCmd, timeout=timeoutSecs, shell=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
                end = time.time()
                strout = outProcess.stdout.decode()
            except subprocess.TimeoutExpired as e:
                # print(f"Cannot open subprocess: {e}")
                end = time.time()
                strout = e.stdout.decode()
            # endtry

            strout = f"Total verification running time: {time.strftime('%H:%M:%S', time.gmtime(end-start))}\n" + strout
            with open(logFile, "w") as f:
                f.write(strout)
                print(f"Done processing at {p4program}-{propertyFile}.")
            # endwith
            print(f"==== Done execing {execCmd}.")
        # endfor
    # endif

def main():
    for fname in os.listdir():
        if os.path.isdir(fname):
            testDir(fname)
        # endif
    #endfor


if __name__ == "__main__":
    # test all
    # main()
    # test some dir
    testDir("P4xos")

