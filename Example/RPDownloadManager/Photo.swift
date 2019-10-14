// Photo.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let photo = try? newJSONDecoder().decode(Photo.self, from: jsonData)

import Foundation

// MARK: - Photo
public class Photo: Decodable {
    let id: String?
    let createdAt: Date?
    let width, height: Int?
    let color: String?
    let likes: Int?
    let likedByUser: Bool?
    let user: User?
    let urls: Urls?
    let categories: [Category]?
    let links: PhotoLinks?

    enum CodingKeys: String, CodingKey {
        case id
        case createdAt = "created_at"
        case width, height, color, likes
        case likedByUser = "liked_by_user"
        case user
        case urls, categories, links
    }

    init(id: String?, createdAt: Date?, width: Int?, height: Int?, color: String?, likes: Int?, likedByUser: Bool?, user: User?, urls: Urls?, categories: [Category]?, links: PhotoLinks?) {
        self.id = id
        self.createdAt = createdAt
        self.width = width
        self.height = height
        self.color = color
        self.likes = likes
        self.likedByUser = likedByUser
        self.user = user
        self.urls = urls
        self.categories = categories
        self.links = links
    }
}

// Category.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let category = try? newJSONDecoder().decode(Category.self, from: jsonData)


// MARK: - Category
public class Category: Decodable {
    let id: Int?
    let title: Title?
    let photoCount: Int?
    let links: CategoryLinks?

    enum CodingKeys: String, CodingKey {
        case id, title
        case photoCount = "photo_count"
        case links
    }

    init(id: Int?, title: Title?, photoCount: Int?, links: CategoryLinks?) {
        self.id = id
        self.title = title
        self.photoCount = photoCount
        self.links = links
    }
}

// CategoryLinks.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let categoryLinks = try? newJSONDecoder().decode(CategoryLinks.self, from: jsonData)

// MARK: - CategoryLinks
public class CategoryLinks: Decodable {
    let linksSelf, photos: String?

    enum CodingKeys: String, CodingKey {
        case linksSelf = "self"
        case photos
    }

    init(linksSelf: String?, photos: String?) {
        self.linksSelf = linksSelf
        self.photos = photos
    }
}

// Title.swift

public enum Title: String, Decodable {
    case buildings = "Buildings"
    case nature = "Nature"
    case objects = "Objects"
    case people = "People"
}

// PhotoLinks.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let photoLinks = try? newJSONDecoder().decode(PhotoLinks.self, from: jsonData)

// MARK: - PhotoLinks
public class PhotoLinks: Decodable {
    let linksSelf: String?
    let html, download: String?

    enum CodingKeys: String, CodingKey {
        case linksSelf = "self"
        case html, download
    }

    init(linksSelf: String?, html: String?, download: String?) {
        self.linksSelf = linksSelf
        self.html = html
        self.download = download
    }
}

// Urls.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let urls = try? newJSONDecoder().decode(Urls.self, from: jsonData)

// MARK: - Urls
public class Urls: Decodable {
    let raw, full, regular, small: String?
    let thumb: String?

    init(raw: String?, full: String?, regular: String?, small: String?, thumb: String?) {
        self.raw = raw
        self.full = full
        self.regular = regular
        self.small = small
        self.thumb = thumb
    }
}

// User.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let user = try? newJSONDecoder().decode(User.self, from: jsonData)

// MARK: - User
public class User: Decodable {
    let id, username, name: String?
    let profileImage: ProfileImage?
    let links: UserLinks?

    enum CodingKeys: String, CodingKey {
        case id, username, name
        case profileImage = "profile_image"
        case links
    }

    init(id: String?, username: String?, name: String?, profileImage: ProfileImage?, links: UserLinks?) {
        self.id = id
        self.username = username
        self.name = name
        self.profileImage = profileImage
        self.links = links
    }
}

// UserLinks.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let userLinks = try? newJSONDecoder().decode(UserLinks.self, from: jsonData)

// MARK: - UserLinks
public class UserLinks: Decodable {
    let linksSelf: String?
    let html: String?
    let photos, likes: String?

    enum CodingKeys: String, CodingKey {
        case linksSelf = "self"
        case html, photos, likes
    }

    init(linksSelf: String?, html: String?, photos: String?, likes: String?) {
        self.linksSelf = linksSelf
        self.html = html
        self.photos = photos
        self.likes = likes
    }
}

// ProfileImage.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let profileImage = try? newJSONDecoder().decode(ProfileImage.self, from: jsonData)

// MARK: - ProfileImage
public class ProfileImage: Decodable {
    let small, medium, large: String?

    init(small: String?, medium: String?, large: String?) {
        self.small = small
        self.medium = medium
        self.large = large
    }
}

// JSONSchemaSupport.swift

public typealias Photos = [Photo]
