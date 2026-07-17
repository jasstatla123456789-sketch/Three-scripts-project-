const os = require("os");
const { execSync } = require("child_process");
const readline = require("readline");

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

function showMenu() {
    console.clear();
    console.log("=========================================");
    console.log("        SYSTEM INFORMATION TOOL");
    console.log("=========================================");
    console.log("1. Operating System");
    console.log("2. Kernel Version");
    console.log("3. CPU Information");
    console.log("4. Memory Usage");
    console.log("5. Disk Usage");
    console.log("6. Current User");
    console.log("7. Current Date & Time");
    console.log("8. System Uptime");
    console.log("9. Exit");
    console.log("=========================================");

    rl.question("Enter your choice: ", (choice) => {
        console.log();

        switch (choice) {
            case "1":
                console.log("Operating System:");
                console.log(os.type(), os.release());
                break;

            case "2":
                console.log("Kernel Version:");
                console.log(os.release());
                break;

            case "3":
                console.log("CPU Information:");
                console.log(os.cpus());
                break;

            case "4":
                console.log("Memory Usage:");
                console.log(`Total Memory: ${(os.totalmem() / 1024 / 1024 / 1024).toFixed(2)} GB`);
                console.log(`Free Memory : ${(os.freemem() / 1024 / 1024 / 1024).toFixed(2)} GB`);
                break;

            case "5":
                console.log("Disk Usage:");
                try {
                    console.log(execSync("df -h").toString());
                } catch (err) {
                    console.log("Disk usage command not supported on this system.");
                }
                break;

            case "6":
                console.log("Current User:");
                console.log(os.userInfo().username);
                break;

            case "7":
                console.log("Current Date & Time:");
                console.log(new Date().toString());
                break;

            case "8":
                console.log("System Uptime:");
                console.log(`${Math.floor(os.uptime() / 3600)} hours`);
                break;

            case "9":
                console.log("Exiting...");
                rl.close();
                return;

            default:
                console.log("Invalid choice!");
        }

        rl.question("\nPress Enter to continue...", () => {
            showMenu();
        });
    });
}

showMenu();
