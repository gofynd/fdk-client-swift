

import Foundation
public extension ApplicationClient {
    /*
         Model: Navigation
         Used By: Content
     */
    class Navigation: Codable {
        public var name: String?

        public var slug: String?

        public var orientation: String?

        public var createdBy: CreatedBySchema?

        public var dateMeta: DateMeta?

        public var id: String?

        public var position: String?

        public var application: String?

        public var platform: String?

        public var navigation: NavigationReference?

        public enum CodingKeys: String, CodingKey {
            case name

            case slug

            case orientation

            case createdBy = "created_by"

            case dateMeta = "date_meta"

            case id = "_id"

            case position

            case application

            case platform

            case navigation
        }

        public init(application: String? = nil, createdBy: CreatedBySchema? = nil, dateMeta: DateMeta? = nil, name: String? = nil, navigation: NavigationReference? = nil, orientation: String? = nil, platform: String? = nil, position: String? = nil, slug: String? = nil, id: String? = nil) {
            self.name = name

            self.slug = slug

            self.orientation = orientation

            self.createdBy = createdBy

            self.dateMeta = dateMeta

            self.id = id

            self.position = position

            self.application = application

            self.platform = platform

            self.navigation = navigation
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orientation = try container.decode(String.self, forKey: .orientation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(CreatedBySchema.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dateMeta = try container.decode(DateMeta.self, forKey: .dateMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                position = try container.decode(String.self, forKey: .position)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                application = try container.decode(String.self, forKey: .application)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                platform = try container.decode(String.self, forKey: .platform)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                navigation = try container.decode(NavigationReference.self, forKey: .navigation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(orientation, forKey: .orientation)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(position, forKey: .position)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(platform, forKey: .platform)

            try? container.encodeIfPresent(navigation, forKey: .navigation)
        }
    }
}
