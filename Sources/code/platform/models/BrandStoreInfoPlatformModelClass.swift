

import Foundation
public extension PlatformClient {
    /*
         Model: BrandStoreInfo
         Used By: Configuration
     */

    class BrandStoreInfo: Codable {
        public var storeName: String?

        public var storeId: Int?

        public var storeType: String?

        public var storeCode: String?

        public var storeAddress: OptedStoreAddress?

        public var company: OptedCompany?

        public enum CodingKeys: String, CodingKey {
            case storeName = "store_name"

            case storeId = "store_id"

            case storeType = "store_type"

            case storeCode = "store_code"

            case storeAddress = "store_address"

            case company
        }

        public init(company: OptedCompany? = nil, storeAddress: OptedStoreAddress? = nil, storeCode: String? = nil, storeId: Int? = nil, storeName: String? = nil, storeType: String? = nil) {
            self.storeName = storeName

            self.storeId = storeId

            self.storeType = storeType

            self.storeCode = storeCode

            self.storeAddress = storeAddress

            self.company = company
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                storeName = try container.decode(String.self, forKey: .storeName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeId = try container.decode(Int.self, forKey: .storeId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeType = try container.decode(String.self, forKey: .storeType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeCode = try container.decode(String.self, forKey: .storeCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeAddress = try container.decode(OptedStoreAddress.self, forKey: .storeAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                company = try container.decode(OptedCompany.self, forKey: .company)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(storeType, forKey: .storeType)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(storeAddress, forKey: .storeAddress)

            try? container.encodeIfPresent(company, forKey: .company)
        }
    }
}
