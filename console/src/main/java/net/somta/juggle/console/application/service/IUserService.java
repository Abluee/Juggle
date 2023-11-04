package net.somta.juggle.console.application.service;

import net.somta.juggle.console.domain.user.UserAO;

/**
 * @author husong
 */
public interface IUserService {

    Boolean updateUser(UserAO userAO);

    UserAO queryUserById(Long userId);

    UserAO queryUserByUserName(String userName);

}
