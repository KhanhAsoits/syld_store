package com.syld.store.ultis;

import com.auth0.jwt.JWT;
import com.auth0.jwt.JWTVerifier;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.interfaces.DecodedJWT;
import com.syld.store.dto.TokenDetail;
import org.springframework.beans.factory.annotation.Value;

public class JWTHelper {
    @Value("${secret_key}")
    private static String secret_key;
    private static String issuer = "auth0";

    public static String generateToken(TokenDetail tokenDetail) {
        String token = "";
        try {
            Algorithm algorithm = Algorithm.HMAC256(secret_key.getBytes());
            token = JWT.create()
                    .withIssuer(issuer)
                    .withExpiresAt(tokenDetail.getExpire_at())
                    .sign(algorithm);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return token;
    }

    public static boolean verifyToken(String token, TokenDetail tokenDetail) {
        try {
            DecodedJWT decodedJWT;
            Algorithm algorithm = Algorithm.HMAC256(secret_key.getBytes());
            JWTVerifier jwtVerifier = JWT.require(algorithm)
                    .withIssuer(issuer)
                    .build();
            decodedJWT = jwtVerifier.verify(token);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}