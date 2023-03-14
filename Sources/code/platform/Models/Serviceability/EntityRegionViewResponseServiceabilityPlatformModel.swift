

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: EntityRegionViewResponse
         Used By: Serviceability
     */

    class EntityRegionViewResponse: Codable {
        public var data: [EntityRegionViewItems]

        public var error: EntityRegionViewError

        public var page: EntityRegionViewPage

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case data

            case error

            case page

            case success
        }

        public init(data: [EntityRegionViewItems], error: EntityRegionViewError, page: EntityRegionViewPage, success: Bool) {
            self.data = data

            self.error = error

            self.page = page

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            data = try container.decode([EntityRegionViewItems].self, forKey: .data)

            error = try container.decode(EntityRegionViewError.self, forKey: .error)

            page = try container.decode(EntityRegionViewPage.self, forKey: .page)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: EntityRegionViewResponse
         Used By: Serviceability
     */

    class EntityRegionViewResponse: Codable {
        public var data: [EntityRegionViewItems]

        public var error: EntityRegionViewError

        public var page: EntityRegionViewPage

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case data

            case error

            case page

            case success
        }

        public init(data: [EntityRegionViewItems], error: EntityRegionViewError, page: EntityRegionViewPage, success: Bool) {
            self.data = data

            self.error = error

            self.page = page

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            data = try container.decode([EntityRegionViewItems].self, forKey: .data)

            error = try container.decode(EntityRegionViewError.self, forKey: .error)

            page = try container.decode(EntityRegionViewPage.self, forKey: .page)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
