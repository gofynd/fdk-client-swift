

import Foundation
public extension PlatformClient {
    /*
         Model: B2BPODetails
         Used By: Order
     */

    class B2BPODetails: Codable {
        public var poLineAmount: Double

        public var totalGstPercentage: Double

        public var poTaxAmount: Double

        public var itemBasePrice: Double

        public enum CodingKeys: String, CodingKey {
            case poLineAmount = "po_line_amount"

            case totalGstPercentage = "total_gst_percentage"

            case poTaxAmount = "po_tax_amount"

            case itemBasePrice = "item_base_price"
        }

        public init(itemBasePrice: Double, poLineAmount: Double, poTaxAmount: Double, totalGstPercentage: Double) {
            self.poLineAmount = poLineAmount

            self.totalGstPercentage = totalGstPercentage

            self.poTaxAmount = poTaxAmount

            self.itemBasePrice = itemBasePrice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            poLineAmount = try container.decode(Double.self, forKey: .poLineAmount)

            totalGstPercentage = try container.decode(Double.self, forKey: .totalGstPercentage)

            poTaxAmount = try container.decode(Double.self, forKey: .poTaxAmount)

            itemBasePrice = try container.decode(Double.self, forKey: .itemBasePrice)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(poLineAmount, forKey: .poLineAmount)

            try? container.encodeIfPresent(totalGstPercentage, forKey: .totalGstPercentage)

            try? container.encodeIfPresent(poTaxAmount, forKey: .poTaxAmount)

            try? container.encodeIfPresent(itemBasePrice, forKey: .itemBasePrice)
        }
    }
}
