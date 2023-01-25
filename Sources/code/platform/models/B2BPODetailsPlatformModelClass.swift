

import Foundation
public extension PlatformClient {
    /*
         Model: B2BPODetails
         Used By: Order
     */

    class B2BPODetails: Codable {
        public var itemBasePrice: Double?

        public var dockerNumber: String?

        public var poLineAmount: Double?

        public var partialCanRet: Bool?

        public var poTaxAmount: Double?

        public var totalGstPercentage: Double?

        public enum CodingKeys: String, CodingKey {
            case itemBasePrice = "item_base_price"

            case dockerNumber = "docker_number"

            case poLineAmount = "po_line_amount"

            case partialCanRet = "partial_can_ret"

            case poTaxAmount = "po_tax_amount"

            case totalGstPercentage = "total_gst_percentage"
        }

        public init(dockerNumber: String? = nil, itemBasePrice: Double? = nil, partialCanRet: Bool? = nil, poLineAmount: Double? = nil, poTaxAmount: Double? = nil, totalGstPercentage: Double? = nil) {
            self.itemBasePrice = itemBasePrice

            self.dockerNumber = dockerNumber

            self.poLineAmount = poLineAmount

            self.partialCanRet = partialCanRet

            self.poTaxAmount = poTaxAmount

            self.totalGstPercentage = totalGstPercentage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                itemBasePrice = try container.decode(Double.self, forKey: .itemBasePrice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dockerNumber = try container.decode(String.self, forKey: .dockerNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                poLineAmount = try container.decode(Double.self, forKey: .poLineAmount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                partialCanRet = try container.decode(Bool.self, forKey: .partialCanRet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                poTaxAmount = try container.decode(Double.self, forKey: .poTaxAmount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalGstPercentage = try container.decode(Double.self, forKey: .totalGstPercentage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemBasePrice, forKey: .itemBasePrice)

            try? container.encodeIfPresent(dockerNumber, forKey: .dockerNumber)

            try? container.encodeIfPresent(poLineAmount, forKey: .poLineAmount)

            try? container.encodeIfPresent(partialCanRet, forKey: .partialCanRet)

            try? container.encodeIfPresent(poTaxAmount, forKey: .poTaxAmount)

            try? container.encodeIfPresent(totalGstPercentage, forKey: .totalGstPercentage)
        }
    }
}