import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: QrFeature
         Used By: Configuration
     */

    class QrFeature: Codable {
        public var application: Bool?

        public var products: Bool?

        public var collections: Bool?

        public enum CodingKeys: String, CodingKey {
            case application

            case products

            case collections
        }

        public init(application: Bool?, collections: Bool?, products: Bool?) {
            self.application = application

            self.products = products

            self.collections = collections
        }

        public func duplicate() -> QrFeature {
            let dict = self.dictionary!
            let copy = QrFeature(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                application = try container.decode(Bool.self, forKey: .application)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                products = try container.decode(Bool.self, forKey: .products)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                collections = try container.decode(Bool.self, forKey: .collections)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(products, forKey: .products)

            try? container.encodeIfPresent(collections, forKey: .collections)
        }
    }
}
