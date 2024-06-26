package com.pokemonreview.api.security.dto;

import lombok.Data;

@Data
public class AuthResponseDto {
    private String token;
    private String tokenType = "Bearer ";
    private String username;
    private String role;

    public AuthResponseDto(String accessToken) {
        this.token = accessToken;
    }
}