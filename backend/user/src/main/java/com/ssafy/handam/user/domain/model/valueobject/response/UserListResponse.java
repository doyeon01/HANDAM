package com.ssafy.handam.user.domain.model.valueobject.response;

import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
public class UserListResponse {
    public static List<UserInfoResponse> of(List<User> users) {
        // User 엔티티 리스트를 UserInfoResponse 리스트로 변환
        return users.stream()
                .map(user -> UserInfoResponse.builder()
                        .username(user.getUsername())
                        .birth(user.getBirth())
                        .gender(user.getGender())
                        .residence(user.getResidence())
                        .introduction(user.getIntroduction())
                        .accompanyTemperature(user.getAccompanyTemperature())
                        .build())
                .collect(Collectors.toList());
    }
}