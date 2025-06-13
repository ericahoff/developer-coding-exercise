export async function getHabitatsForBird(birdId) {
    const response = await fetch(`http://localhost:8080/birds/${birdId}/habitats`);
  
    if (response.status === 404) {
        throw new Error(`Bird ID ${birdId} not found.`);
      }

    if (!response.ok) {
      throw new Error(`Failed to fetch habitats.`);
    }
  
    return response.json();
  }
  
  export async function getBirdDetails(birdId) {
    const response = await fetch(`http://localhost:8080/birds/${birdId}`);
    
    if (response.status === 404) {
      throw new Error(`Bird ID ${birdId} not found.`);
    }
    if (!response.ok) {
      throw new Error("Failed to fetch bird details.");
    }
  
    return response.json();
  }
  