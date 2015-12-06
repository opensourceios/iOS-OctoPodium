//
//  UsersListResponse.swift
//  GitHubAwards
//
//  Created by Nuno Gonçalves on 05/12/15.
//  Copyright © 2015 Nuno Gonçalves. All rights reserved.
//

struct UsersListResponse : Book {
    
    let users: [User]
    let paginator: Paginator
    
    var data: [AnyObject]
    
    init(users: [User], paginator: Paginator) {
        self.users = users
        data = users
        self.paginator = paginator
    }
    
    func isFirstPage() -> Bool {
        return paginator.isFirstPage()
    }
    
    func isLastPage() -> Bool {
        return paginator.isLastPage()
    }
    
    func hasMoreUsers() -> Bool {
        return paginator.hasMorePages()
    }
    
}