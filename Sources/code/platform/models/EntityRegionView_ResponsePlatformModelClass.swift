

import Foundation
public extension PlatformClient {
    /*
         Model: EntityRegionView_Response
         Used By: Serviceability
     */

    class EntityRegionView_Response: Codable {
        public var data: [EntityRegionView_Items]

        public var success: Bool

        public var page: EntityRegionView_page

        public var error: EntityRegionView_Error

        public enum CodingKeys: String, CodingKey {
            case data

            case success

            case page

            case error
        }

        public init(data: [EntityRegionView_Items], error: EntityRegionView_Error, page: EntityRegionView_page, success: Bool) {
            self.data = data

            self.success = success

            self.page = page

            self.error = error
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            data = try container.decode([EntityRegionView_Items].self, forKey: .data)

            success = try container.decode(Bool.self, forKey: .success)

            page = try container.decode(EntityRegionView_page.self, forKey: .page)

            error = try container.decode(EntityRegionView_Error.self, forKey: .error)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(error, forKey: .error)
        }
    }
}
