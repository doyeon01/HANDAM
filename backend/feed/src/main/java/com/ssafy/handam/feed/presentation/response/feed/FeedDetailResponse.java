package com.ssafy.handam.feed.presentation.response.feed;

import com.ssafy.handam.feed.application.dto.FeedDetailDto;
import lombok.Builder;

@Builder
public record FeedDetailResponse(
        Long id,
        Long userId,
        String nickName,
        String profileImageUrl,
        String feedImageUrl,
        String title,
        String content,
        String address1,
        String address2,
        Double longitude,
        Double latitude,
        String placeType,
        int likeCount,
        boolean isLiked,
        String createdDate
) {

    public static FeedDetailResponse of(
            FeedDetailDto feedDetailDto, String nickName, String profileImageUrl) {

        return FeedDetailResponse.builder()
                .id(feedDetailDto.id())
                .userId(feedDetailDto.userId())
                .nickName(nickName)
                .profileImageUrl(profileImageUrl)
                .feedImageUrl(feedDetailDto.imageUrl())
                .title(feedDetailDto.title())
                .content(feedDetailDto.content())
                .address1(feedDetailDto.address1())
                .address2(feedDetailDto.address2())
                .longitude(feedDetailDto.longitude())
                .latitude(feedDetailDto.latitude())
                .placeType(feedDetailDto.placeType())
                .likeCount(feedDetailDto.likeCount())
                .isLiked(feedDetailDto.isLiked())
                .createdDate(feedDetailDto.createdDate())
                .build();
    }
}
