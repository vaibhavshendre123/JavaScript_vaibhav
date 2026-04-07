// TypeScript Control Flow and Loops Demonstration

// Function with conditional logic
function evaluateTemperature(temperature: number): string {
    if (temperature > 30) {
        return "Hot - Stay hydrated!";
    } else if (temperature >= 15 && temperature <= 30) {
        return "Moderate - Pleasant weather";
    } else if (temperature >= 0 && temperature < 15) {
        return "Cold - Wear warm clothes";
    } else {
        return "Freezing - Stay indoors!";
    }
}
console.log("Temperature Check:", evaluateTemperature(25));
console.log("Temperature Check:", evaluateTemperature(5));
console.log("Temperature Check:", evaluateTemperature(-5));

// Switch Statement - Day of Week
function getDayName(dayNumber: number): string {
    switch(dayNumber) {
        case 1:
            return "Sunday";
        case 2:
            return "Monday";
        case 3:
            return "Tuesday";
        case 4:
            return "Wednesday";
        case 5:
            return "Thursday";
        case 6:
            return "Friday";
        case 7:
            return "Saturday";
        default:
            return "Invalid day number";
    }
}
console.log("Day:", getDayName(3));
console.log("Day:", getDayName(7));

// For Loop - Print multiplication table
console.log("=== Multiplication Table of 5 ===");
for (let multiplier: number = 1; multiplier <= 5; multiplier++) {
    console.log(`5 x ${multiplier} = ${5 * multiplier}`);
}

// While Loop - Countdown
console.log("=== Countdown Timer ===");
let countdown: number = 3;
while (countdown > 0) {
    console.log(`T-minus ${countdown}...`);
    countdown--;
}
console.log("Liftoff! 🚀");

// Do-While Loop - Execute at least once
console.log("=== Random Number Generator ===");
let randomNumber: number = 1;
do {
    console.log("Generated number:", randomNumber);
    randomNumber += Math.floor(Math.random() * 5) + 1;
} while (randomNumber <= 10);

// Arrow Function - Calculate area
const calculateRectangleArea = (width: number, height: number): number => {
    return width * height;
};
console.log("Rectangle Area (5x8):", calculateRectangleArea(5, 8));

// Arrow Function - Simple greeting
const greetUser = (userName: string): string => {
    return `Welcome, ${userName}! Happy to have you here.`;
};
console.log(greetUser("Vaibhav"));