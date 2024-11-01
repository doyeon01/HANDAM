package com.ssafy.handam.accompanyboard.presentation.response.comment;

import com.ssafy.handam.accompanyboard.application.dto.AccompanyBoardCommentDto;

public record AccompanyBoardCommentResponse(
        Long id,
        Long userId,
        Long accompanyBoardArticleId,
        String nickName,
        String profileImageUrl,
        String content
) {

    public static AccompanyBoardCommentResponse of(
            AccompanyBoardCommentDto accompanyBoardCommentDto
    ) {
        return new AccompanyBoardCommentResponse(
                accompanyBoardCommentDto.id(),
                accompanyBoardCommentDto.userId(),
                accompanyBoardCommentDto.accompanyBoardArticleId(),
                accompanyBoardCommentDto.nickName(),
                accompanyBoardCommentDto.profileImageUrl(),
                accompanyBoardCommentDto.content()
        );
    }
}
