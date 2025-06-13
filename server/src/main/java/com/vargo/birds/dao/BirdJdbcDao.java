package com.vargo.birds.dao;

import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.vargo.birds.Bird;

@Repository
public class BirdJdbcDao implements BirdDao {

    private final JdbcTemplate jdbc;

    public BirdJdbcDao(JdbcTemplate jdbc) {
        this.jdbc = jdbc;
    }

    @Override
    public List<String> getHabitatsForBird(int birdId) {
        String sql = """
            SELECT h.name
            FROM habitat h
            JOIN bird_habitat bh ON bh.habitat_id = h.id
            WHERE bh.bird_id = ?
        """;
        return jdbc.queryForList(sql, String.class, birdId);
    }

    // Just added this to help with some error handling
    @Override
    public boolean birdExists(int birdId) {
        String sql = "SELECT COUNT(*) FROM bird WHERE id = ?";
        Integer count = jdbc.queryForObject(sql, Integer.class, birdId);
        return count != null && count > 0;
    }

    // Wanted to display bird names on page
    @Override
    public Bird getBird(int birdId) {
        String sql = "SELECT id, common_name, scientific_name FROM bird WHERE id = ?";
        return jdbc.queryForObject(sql, new BeanPropertyRowMapper<>(Bird.class), birdId);
    }
}
