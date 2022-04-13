import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: GetAppCatalogConfiguration
         Used By: Catalog
     */

    class GetAppCatalogConfiguration: Codable {
        public var isDefault: Bool?

        public var data: AppCatalogConfiguration?

        public enum CodingKeys: String, CodingKey {
            case isDefault = "is_default"

            case data
        }

        public init(data: AppCatalogConfiguration?, isDefault: Bool?) {
            self.isDefault = isDefault

            self.data = data
        }

        public func duplicate() -> GetAppCatalogConfiguration {
            let dict = self.dictionary!
            let copy = GetAppCatalogConfiguration(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isDefault = try container.decode(Bool.self, forKey: .isDefault)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                data = try container.decode(AppCatalogConfiguration.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}
