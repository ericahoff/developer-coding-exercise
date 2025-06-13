package com.vargo.birds;

import java.util.List;

import org.springframework.stereotype.Service;

import com.vargo.birds.dao.BirdDao;
import com.vargo.birds.exceptions.BirdNotFoundException;

@Service
public class BirdService {

    private final BirdDao birdDao;

    public BirdService(BirdDao birdDao) {
        this.birdDao = birdDao;
    }

    public List<String> getHabitatsForBird(int birdId) {
        // check if bird id is valid 
        if (!birdDao.birdExists(birdId)) {
                throw new BirdNotFoundException("Bird ID " + birdId + " not found.");
            }
        return birdDao.getHabitatsForBird(birdId);
    }

    public Bird getBirdById(int birdId) {
        return birdDao.getBird(birdId);
    }
}
