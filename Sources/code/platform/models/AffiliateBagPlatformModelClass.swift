

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var modifiedOn: String

        public var discount: Double

        public var priceEffective: Double

        public var deliveryCharge: Double

        public var pdfLinks: MarketPlacePdf?

        public var identifier: [String: Any]

        public var quantity: Int

        public var avlQty: Int

        public var companyId: Int

        public var itemId: Int

        public var priceMarked: Double

        public var storeId: Int

        public var hsnCodeId: String

        public var unitPrice: Double

        public var affiliateMeta: [String: Any]

        public var affiliateStoreId: String

        public var sku: String

        public var id: String

        public var fyndStoreId: String

        public var transferPrice: Int

        public var sellerIdentifier: String

        public var itemSize: String

        public var amountPaid: Double

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case discount

            case priceEffective = "price_effective"

            case deliveryCharge = "delivery_charge"

            case pdfLinks = "pdf_links"

            case identifier

            case quantity

            case avlQty = "avl_qty"

            case companyId = "company_id"

            case itemId = "item_id"

            case priceMarked = "price_marked"

            case storeId = "store_id"

            case hsnCodeId = "hsn_code_id"

            case unitPrice = "unit_price"

            case affiliateMeta = "affiliate_meta"

            case affiliateStoreId = "affiliate_store_id"

            case sku

            case id = "_id"

            case fyndStoreId = "fynd_store_id"

            case transferPrice = "transfer_price"

            case sellerIdentifier = "seller_identifier"

            case itemSize = "item_size"

            case amountPaid = "amount_paid"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.modifiedOn = modifiedOn

            self.discount = discount

            self.priceEffective = priceEffective

            self.deliveryCharge = deliveryCharge

            self.pdfLinks = pdfLinks

            self.identifier = identifier

            self.quantity = quantity

            self.avlQty = avlQty

            self.companyId = companyId

            self.itemId = itemId

            self.priceMarked = priceMarked

            self.storeId = storeId

            self.hsnCodeId = hsnCodeId

            self.unitPrice = unitPrice

            self.affiliateMeta = affiliateMeta

            self.affiliateStoreId = affiliateStoreId

            self.sku = sku

            self.id = id

            self.fyndStoreId = fyndStoreId

            self.transferPrice = transferPrice

            self.sellerIdentifier = sellerIdentifier

            self.itemSize = itemSize

            self.amountPaid = amountPaid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            discount = try container.decode(Double.self, forKey: .discount)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            quantity = try container.decode(Int.self, forKey: .quantity)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            companyId = try container.decode(Int.self, forKey: .companyId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            storeId = try container.decode(Int.self, forKey: .storeId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            sku = try container.decode(String.self, forKey: .sku)

            id = try container.decode(String.self, forKey: .id)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
        }
    }
}
