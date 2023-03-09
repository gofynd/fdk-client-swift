

import Foundation

public extension PlatformClient.CompanyProfile {
    /*
         Model: MetricsSerializer
         Used By: CompanyProfile
     */

    class MetricsSerializer: Codable {
        public var store: DocumentsObj?

        public var brand: DocumentsObj?

        public var uid: Int?

        public var storeDocuments: DocumentsObj?

        public var companyDocuments: DocumentsObj?

        public var stage: String?

        public var product: DocumentsObj?

        public enum CodingKeys: String, CodingKey {
            case store

            case brand

            case uid

            case storeDocuments = "store_documents"

            case companyDocuments = "company_documents"

            case stage

            case product
        }

        public init(brand: DocumentsObj? = nil, companyDocuments: DocumentsObj? = nil, product: DocumentsObj? = nil, stage: String? = nil, store: DocumentsObj? = nil, storeDocuments: DocumentsObj? = nil, uid: Int? = nil) {
            self.store = store

            self.brand = brand

            self.uid = uid

            self.storeDocuments = storeDocuments

            self.companyDocuments = companyDocuments

            self.stage = stage

            self.product = product
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                store = try container.decode(DocumentsObj.self, forKey: .store)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brand = try container.decode(DocumentsObj.self, forKey: .brand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeDocuments = try container.decode(DocumentsObj.self, forKey: .storeDocuments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyDocuments = try container.decode(DocumentsObj.self, forKey: .companyDocuments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stage = try container.decode(String.self, forKey: .stage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                product = try container.decode(DocumentsObj.self, forKey: .product)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(storeDocuments, forKey: .storeDocuments)

            try? container.encodeIfPresent(companyDocuments, forKey: .companyDocuments)

            try? container.encodeIfPresent(stage, forKey: .stage)

            try? container.encodeIfPresent(product, forKey: .product)
        }
    }
}
