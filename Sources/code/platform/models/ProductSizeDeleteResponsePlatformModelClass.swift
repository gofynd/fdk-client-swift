import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: ProductSizeDeleteResponse
         Used By: Catalog
     */

    class ProductSizeDeleteResponse: Codable {
        public var data: ProductSizeDeleteDataResponse?

        public var success: Bool?

        public enum CodingKeys: String, CodingKey {
            case data

            case success
        }

        public init(data: ProductSizeDeleteDataResponse?, success: Bool?) {
            self.data = data

            self.success = success
        }

        public func duplicate() -> ProductSizeDeleteResponse {
            let dict = self.dictionary!
            let copy = ProductSizeDeleteResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                data = try container.decode(ProductSizeDeleteDataResponse.self, forKey: .data)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
