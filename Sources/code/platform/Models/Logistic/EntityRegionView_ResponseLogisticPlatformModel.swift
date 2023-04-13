

import Foundation

public extension PlatformClient.Logistic {
    /*
         Model: EntityRegionView_Response
         Used By: Logistic
     */

    class EntityRegionView_Response: Codable {
        public var error: EntityRegionView_Error

        public var data: [EntityRegionView_Items]

        public var page: EntityRegionView_page

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case error

            case data

            case page

            case success
        }

        public init(data: [EntityRegionView_Items], error: EntityRegionView_Error, page: EntityRegionView_page, success: Bool) {
            self.error = error

            self.data = data

            self.page = page

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            error = try container.decode(EntityRegionView_Error.self, forKey: .error)

            data = try container.decode([EntityRegionView_Items].self, forKey: .data)

            page = try container.decode(EntityRegionView_page.self, forKey: .page)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}

public extension PlatformClient.ApplicationClient.Logistic {
    /*
         Model: EntityRegionView_Response
         Used By: Logistic
     */

    class EntityRegionView_Response: Codable {
        public var error: EntityRegionView_Error

        public var data: [EntityRegionView_Items]

        public var page: EntityRegionView_page

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case error

            case data

            case page

            case success
        }

        public init(data: [EntityRegionView_Items], error: EntityRegionView_Error, page: EntityRegionView_page, success: Bool) {
            self.error = error

            self.data = data

            self.page = page

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            error = try container.decode(EntityRegionView_Error.self, forKey: .error)

            data = try container.decode([EntityRegionView_Items].self, forKey: .data)

            page = try container.decode(EntityRegionView_page.self, forKey: .page)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
