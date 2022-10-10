

import Foundation
public extension PlatformClient {
    /*
         Model: GenerateNoc
         Used By: DocumentEngine
     */

    class GenerateNoc: Codable {
        public var uid: String

        public var sellerName: String

        public var sellerGstin: String

        public var fcGstin: String

        public var templateId: Double

        public var fcAddress: SellerAddress

        public var sellerAddress: SellerAddress

        public enum CodingKeys: String, CodingKey {
            case uid

            case sellerName = "seller_name"

            case sellerGstin = "seller_gstin"

            case fcGstin = "fc_gstin"

            case templateId = "template_id"

            case fcAddress = "fc_address"

            case sellerAddress = "seller_address"
        }

        public init(fcAddress: SellerAddress, fcGstin: String, sellerAddress: SellerAddress, sellerGstin: String, sellerName: String, templateId: Double, uid: String) {
            self.uid = uid

            self.sellerName = sellerName

            self.sellerGstin = sellerGstin

            self.fcGstin = fcGstin

            self.templateId = templateId

            self.fcAddress = fcAddress

            self.sellerAddress = sellerAddress
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            uid = try container.decode(String.self, forKey: .uid)

            sellerName = try container.decode(String.self, forKey: .sellerName)

            sellerGstin = try container.decode(String.self, forKey: .sellerGstin)

            fcGstin = try container.decode(String.self, forKey: .fcGstin)

            templateId = try container.decode(Double.self, forKey: .templateId)

            fcAddress = try container.decode(SellerAddress.self, forKey: .fcAddress)

            sellerAddress = try container.decode(SellerAddress.self, forKey: .sellerAddress)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(sellerName, forKey: .sellerName)

            try? container.encodeIfPresent(sellerGstin, forKey: .sellerGstin)

            try? container.encodeIfPresent(fcGstin, forKey: .fcGstin)

            try? container.encodeIfPresent(templateId, forKey: .templateId)

            try? container.encodeIfPresent(fcAddress, forKey: .fcAddress)

            try? container.encodeIfPresent(sellerAddress, forKey: .sellerAddress)
        }
    }
}
