package com.ssafy.handam.user.domain.repository;

import com.ssafy.handam.user.domain.model.entity.Follow;
import com.ssafy.handam.user.domain.model.entity.User;

import java.util.Optional;

public interface FollowRepository {
    Optional<Follow> findByFollowerAndFollowing(User follower, User following);
    Follow save(Follow follow);
}