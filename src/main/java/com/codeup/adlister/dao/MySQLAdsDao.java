package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.mysql.cj.jdbc.Driver;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {
    private Connection connection = null;

    public MySQLAdsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                config.getUrl(),
                config.getUser(),
                config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

    @Override
    public List<Ad> all() {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM bats");
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    @Override
    public List<Ad> userAds(long id) {
        String query = "SELECT * FROM bats WHERE user_id = ?";
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement(query);
            stmt.setLong(1, id);
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads for this user.", e);
        }
    }

    @Override
    public Ad adById(long id) {
        String query = "SELECT * FROM bats WHERE id = ?";
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement(query);
            stmt.setLong(1, id);
            ResultSet rs = stmt.executeQuery();
            rs.next();
            return extractAd(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving the selected ad.", e);
        }
    }

    @Override
    public Long insert(Ad ad) {
        try {
            String insertQuery = "INSERT INTO bats(user_id, title, description) VALUES (?, ?, ?)";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, ad.getUserId());
            stmt.setString(2, ad.getTitle());
            stmt.setString(3, ad.getDescription());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
    }

    @Override
    public void update(long id, String title, String description){
        try {
            String updateQuery = "UPDATE bats SET title = ?, description = ? WHERE id = ?";
            PreparedStatement stmt = connection.prepareStatement(updateQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setString(1, title);
            stmt.setString(2, description);
            stmt.setLong(3, id);
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error updating this ad.", e);
        }
    }

    @Override
    public void delete(long id){
        try{
            String updateQuery = "DELETE FROM bats WHERE id = ?";
            PreparedStatement stmt = connection.prepareStatement(updateQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, id);
            stmt.executeQuery();
        }catch (SQLException e) {
            throw new RuntimeException("Error deleting this ad.", e);
        }
    }

    private Ad extractAd(ResultSet rs) throws SQLException {
        return new Ad(
            rs.getLong("id"),
            rs.getLong("user_id"),
            rs.getString("title"),
            rs.getString("description")
        );
    }

    private List<Ad> createAdsFromResults(ResultSet rs) throws SQLException {
        List<Ad> ads = new ArrayList<>();
        while (rs.next()) {
            ads.add(extractAd(rs));
        }
        return ads;
    }

}
