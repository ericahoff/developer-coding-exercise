package com.vargo.birds.dao;

import java.util.List;

import com.vargo.birds.Bird;

public interface BirdDao {
    List<String> getHabitatsForBird(int birdId);
    boolean birdExists(int birdId);
    Bird getBird(int birdId);
}
