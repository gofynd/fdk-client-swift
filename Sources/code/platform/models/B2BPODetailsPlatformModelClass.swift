

import Foundation
public extension PlatformClient {
    /*
         Model: B2BPODetails
         Used By: Order
     */

    class B2BPODetails: Codable {
        public var poLineAmount: Double

        public var itemBasePrice: Double

        public var poTaxAmount: Double

        public var totalGstPercentage: Double

        public enum CodingKeys: String, CodingKey {
            case poLineAmount = "po_line_amount"

            case itemBasePrice = "item_base_price"

            case poTaxAmount = "po_tax_amount"

            case totalGstPercentage = "total_gst_percentage"
        }

        public init(itemBasePrice: Double, poLineAmount: Double, poTaxAmount: Double, totalGstPercentage: Double) {
            self.poLineAmount = poLineAmount

            self.itemBasePrice = itemBasePrice

            self.poTaxAmount = poTaxAmount

            self.totalGstPercentage = totalGstPercentage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            poLineAmount = try container.decode(Double.self, forKey: .poLineAmount)

            itemBasePrice = try container.decode(Double.self, forKey: .itemBasePrice)

            poTaxAmount = try container.decode(Double.self, forKey: .poTaxAmount)

            totalGstPercentage = try container.decode(Double.self, forKey: .totalGstPercentage)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(poLineAmount, forKey: .poLineAmount)

            try? container.encodeIfPresent(itemBasePrice, forKey: .itemBasePrice)

            try? container.encodeIfPresent(poTaxAmount, forKey: .poTaxAmount)

            try? container.encodeIfPresent(totalGstPercentage, forKey: .totalGstPercentage)
        }
    }
}
