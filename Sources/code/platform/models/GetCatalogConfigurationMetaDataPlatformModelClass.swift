

import Foundation
public extension PlatformClient {
    /*
         Model: GetCatalogConfigurationMetaData
         Used By: Catalog
     */

    class GetCatalogConfigurationMetaData: Codable {
        public var listing: MetaDataListingResponse?

        public var product: GetCatalogConfigurationDetailsProduct?

        public enum CodingKeys: String, CodingKey {
            case listing

            case product
        }

        public init(listing: MetaDataListingResponse? = nil, product: GetCatalogConfigurationDetailsProduct? = nil) {
            self.listing = listing

            self.product = product
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                listing = try container.decode(MetaDataListingResponse.self, forKey: .listing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                product = try container.decode(GetCatalogConfigurationDetailsProduct.self, forKey: .product)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(listing, forKey: .listing)

            try? container.encodeIfPresent(product, forKey: .product)
        }
    }
}
