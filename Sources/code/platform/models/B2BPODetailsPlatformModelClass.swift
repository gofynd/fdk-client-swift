

import Foundation
public extension PlatformClient {
    /*
         Model: B2BPODetails
         Used By: Order
     */

    class B2BPODetails: Codable {
        public var totalGstPercentage: Double

        public var itemBasePrice: Double

        public var poLineAmount: Double

        public var poTaxAmount: Double

        public enum CodingKeys: String, CodingKey {
            case totalGstPercentage = "total_gst_percentage"

            case itemBasePrice = "item_base_price"

            case poLineAmount = "po_line_amount"

            case poTaxAmount = "po_tax_amount"
        }

        public init(itemBasePrice: Double, poLineAmount: Double, poTaxAmount: Double, totalGstPercentage: Double) {
            self.totalGstPercentage = totalGstPercentage

            self.itemBasePrice = itemBasePrice

            self.poLineAmount = poLineAmount

            self.poTaxAmount = poTaxAmount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            totalGstPercentage = try container.decode(Double.self, forKey: .totalGstPercentage)

            itemBasePrice = try container.decode(Double.self, forKey: .itemBasePrice)

            poLineAmount = try container.decode(Double.self, forKey: .poLineAmount)

            poTaxAmount = try container.decode(Double.self, forKey: .poTaxAmount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalGstPercentage, forKey: .totalGstPercentage)

            try? container.encodeIfPresent(itemBasePrice, forKey: .itemBasePrice)

            try? container.encodeIfPresent(poLineAmount, forKey: .poLineAmount)

            try? container.encodeIfPresent(poTaxAmount, forKey: .poTaxAmount)
        }
    }
}
