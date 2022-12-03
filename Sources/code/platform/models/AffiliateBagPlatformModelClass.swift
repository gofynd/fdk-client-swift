

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var transferPrice: Int

        public var affiliateMeta: [String: Any]

        public var id: String

        public var itemSize: String

        public var itemId: Int

        public var discount: Double

        public var pdfLinks: MarketPlacePdf?

        public var fyndStoreId: String

        public var quantity: Int

        public var companyId: Int

        public var amountPaid: Double

        public var modifiedOn: String

        public var sellerIdentifier: String

        public var affiliateStoreId: String

        public var avlQty: Int

        public var hsnCodeId: String

        public var priceMarked: Double

        public var storeId: Int

        public var unitPrice: Double

        public var priceEffective: Double

        public var identifier: [String: Any]

        public var deliveryCharge: Double

        public var sku: String

        public enum CodingKeys: String, CodingKey {
            case transferPrice = "transfer_price"

            case affiliateMeta = "affiliate_meta"

            case id = "_id"

            case itemSize = "item_size"

            case itemId = "item_id"

            case discount

            case pdfLinks = "pdf_links"

            case fyndStoreId = "fynd_store_id"

            case quantity

            case companyId = "company_id"

            case amountPaid = "amount_paid"

            case modifiedOn = "modified_on"

            case sellerIdentifier = "seller_identifier"

            case affiliateStoreId = "affiliate_store_id"

            case avlQty = "avl_qty"

            case hsnCodeId = "hsn_code_id"

            case priceMarked = "price_marked"

            case storeId = "store_id"

            case unitPrice = "unit_price"

            case priceEffective = "price_effective"

            case identifier

            case deliveryCharge = "delivery_charge"

            case sku
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.transferPrice = transferPrice

            self.affiliateMeta = affiliateMeta

            self.id = id

            self.itemSize = itemSize

            self.itemId = itemId

            self.discount = discount

            self.pdfLinks = pdfLinks

            self.fyndStoreId = fyndStoreId

            self.quantity = quantity

            self.companyId = companyId

            self.amountPaid = amountPaid

            self.modifiedOn = modifiedOn

            self.sellerIdentifier = sellerIdentifier

            self.affiliateStoreId = affiliateStoreId

            self.avlQty = avlQty

            self.hsnCodeId = hsnCodeId

            self.priceMarked = priceMarked

            self.storeId = storeId

            self.unitPrice = unitPrice

            self.priceEffective = priceEffective

            self.identifier = identifier

            self.deliveryCharge = deliveryCharge

            self.sku = sku
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            id = try container.decode(String.self, forKey: .id)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            itemId = try container.decode(Int.self, forKey: .itemId)

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            companyId = try container.decode(Int.self, forKey: .companyId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            storeId = try container.decode(Int.self, forKey: .storeId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            sku = try container.decode(String.self, forKey: .sku)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(sku, forKey: .sku)
        }
    }
}
