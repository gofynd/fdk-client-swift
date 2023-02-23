

import Foundation
public extension PlatformClient {
    /*
         Model: EntityRegionView_Response
         Used By: Serviceability
     */

    class EntityRegionView_Response: Codable {
        public var error: EntityRegionView_Error

        public var data: [EntityRegionView_Items]

        public var success: Bool

        public var page: EntityRegionView_page

        public enum CodingKeys: String, CodingKey {
            case error

            case data

            case success

            case page
        }

        public init(data: [EntityRegionView_Items], error: EntityRegionView_Error, page: EntityRegionView_page, success: Bool) {
            self.error = error

            self.data = data

            self.success = success

            self.page = page
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            error = try container.decode(EntityRegionView_Error.self, forKey: .error)

            data = try container.decode([EntityRegionView_Items].self, forKey: .data)

            success = try container.decode(Bool.self, forKey: .success)

            page = try container.decode(EntityRegionView_page.self, forKey: .page)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }
}
