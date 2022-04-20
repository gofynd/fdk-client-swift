import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: EntityRegionView_Response
         Used By: Serviceability
     */

    class EntityRegionView_Response: Codable {
        public var success: Bool

        public var error: EntityRegionView_Error

        public var page: EntityRegionView_page

        public var data: [EntityRegionView_Items]

        public enum CodingKeys: String, CodingKey {
            case success

            case error

            case page

            case data
        }

        public init(data: [EntityRegionView_Items], error: EntityRegionView_Error, page: EntityRegionView_page, success: Bool) {
            self.success = success

            self.error = error

            self.page = page

            self.data = data
        }

        public func duplicate() -> EntityRegionView_Response {
            let dict = self.dictionary!
            let copy = EntityRegionView_Response(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            error = try container.decode(EntityRegionView_Error.self, forKey: .error)

            page = try container.decode(EntityRegionView_page.self, forKey: .page)

            data = try container.decode([EntityRegionView_Items].self, forKey: .data)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}
