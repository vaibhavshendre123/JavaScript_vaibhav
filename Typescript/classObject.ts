// TypeScript Classes and Inheritance Demo

// Parent Class - Vehicle
class Vehicle {
    constructor(
        public brand: string,
        protected model: string
    ) {}

    displayBrand(): void {
        console.log(`Vehicle Brand: ${this.brand}`);
    }

    getModel(): string {
        return this.model;
    }
}

// Child Class - Car (Inherits from Vehicle)
class Car extends Vehicle {
    private registrationNumber: number;
    
    constructor(brand: string, model: string, registrationNumber: number) {
        super(brand, model);
        this.registrationNumber = registrationNumber;
    }

    showCarDetails(): void {
        console.log(`Brand: ${this.brand}`);
        console.log(`Model: ${this.getModel()}`);
        console.log(`Registration No: ${this.registrationNumber}`);
    }

    startEngine(): void {
        console.log(`🚗 ${this.brand} ${this.model} engine started!`);
    }
}

// Another Child Class - Motorcycle
class Motorcycle extends Vehicle {
    private engineCapacity: number;

    constructor(brand: string, model: string, engineCapacity: number) {
        super(brand, model);
        this.engineCapacity = engineCapacity;
    }

    displayMotorcycleInfo(): void {
        console.log(`=== Motorcycle Details ===`);
        console.log(`Brand: ${this.brand}`);
        console.log(`Model: ${this.getModel()}`);
        console.log(`Engine Capacity: ${this.engineCapacity}cc`);
    }
}

// Create instances
console.log("=== Car Object ===");
let myCar = new Car("Toyota", "Innova", 847562);
myCar.displayBrand();
myCar.showCarDetails();
myCar.startEngine();

console.log("\n=== Motorcycle Object ===");
let myBike = new Motorcycle("Yamaha", "R15", 150);
myBike.displayMotorcycleInfo();