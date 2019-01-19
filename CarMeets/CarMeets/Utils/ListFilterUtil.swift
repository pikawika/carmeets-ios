//
//  ListFilterUtil.swift
//  CarMeets
//
//  Created by Lennert Bontinck on 19/01/2019.
//  Copyright © 2019 Lennert Bontinck. All rights reserved.
//

import Foundation

class ListFilterUtil {
    /**
     Haalt de token op uit de KeyChain en haalt de gebruikersnaam er uit.
     */
    static func getUserFavourites(fromMeetingList meetings: [Meeting]) -> [Meeting] {
        return meetings.filter {
            $0.listUsersGoing.contains(TokenUtil.getUserIdFromToken()) ||
                $0.listUsersLiked.contains(TokenUtil.getUserIdFromToken())
        }
    }
}
