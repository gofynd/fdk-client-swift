

import Foundation
public extension PlatformClient {
    /*
         Model: BulkListingResponse
         Used By: Order
     */

    class BulkListingResponse: Codable {
        public var data: [bulkListingData]?

        public var success: Bool?

        public var error: String?

        public var page: BulkListingPage?

        public enum CodingKeys: String, CodingKey {
            case data

            case success

            case error

            case page
        }

        public init(data: [bulkListingData]? = nil, error: String? = nil, page: BulkListingPage? = nil, success: Bool? = nil) {
            self.data = data

            self.success = success

            self.error = error

            self.page = page
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                data = try container.decode([bulkListingData].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                error = try container.decode(String.self, forKey: .error)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode(BulkListingPage.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }
}
