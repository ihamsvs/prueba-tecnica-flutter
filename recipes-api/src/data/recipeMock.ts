import { faker } from "@faker-js/faker";

export interface Recipe {
    id:string;
    patientId:string;
    medication:string;
    issuedAt: string;
    doctor: string;
    notes: string;
}

export const generateRecipe = (count: number = 5):Recipe[] => {
    return Array.from({length: count}, () => ({
        id: faker.string.uuid(),
        patientId: faker.string.uuid(),
        medication: faker.helpers.arrayElement([
            "Paracetamol 500mg",
            "Ibuprofeno 400mg",
            "Amoxicilina 875mg",
            "Loratadina 10mg"
        ]),
        issuedAt: faker.date.past().toISOString().split("T")[0],
        doctor: `${faker.person.prefix()} ${faker.person.firstName()} ${faker.person.lastName()}`,
        notes: faker.helpers.arrayElement([
            "Tomar 1 cada 8 horas",
            "No mezclar con alcohol",
            "Tomar con abundante agua"
        ])
    }))

}

export const recipes = generateRecipe(10);