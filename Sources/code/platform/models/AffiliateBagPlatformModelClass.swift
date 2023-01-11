

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var quantity: Int

        public var discount: Double

        public var companyId: Int

        public var identifier: [String: Any]

        public var amountPaid: Double

        public var itemSize: String

        public var pdfLinks: MarketPlacePdf?

        public var unitPrice: Double

        public var avlQty: Int

        public var affiliateMeta: [String: Any]

        public var deliveryCharge: Double

        public var affiliateStoreId: String

        public var id: String

        public var transferPrice: Int

        public var priceMarked: Double

        public var itemId: Int

        public var hsnCodeId: String

        public var fyndStoreId: String

        public var sellerIdentifier: String

        public var modifiedOn: String

        public var storeId: Int

        public var priceEffective: Double

        public var sku: String

        public enum CodingKeys: String, CodingKey {
            case quantity

            case discount

            case companyId = "company_id"

            case identifier

            case amountPaid = "amount_paid"

            case itemSize = "item_size"

            case pdfLinks = "pdf_links"

            case unitPrice = "unit_price"

            case avlQty = "avl_qty"

            case affiliateMeta = "affiliate_meta"

            case deliveryCharge = "delivery_charge"

            case affiliateStoreId = "affiliate_store_id"

            case id = "_id"

            case transferPrice = "transfer_price"

            case priceMarked = "price_marked"

            case itemId = "item_id"

            case hsnCodeId = "hsn_code_id"

            case fyndStoreId = "fynd_store_id"

            case sellerIdentifier = "seller_identifier"

            case modifiedOn = "modified_on"

            case storeId = "store_id"

            case priceEffective = "price_effective"

            case sku
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.quantity = quantity

            self.discount = discount

            self.companyId = companyId

            self.identifier = identifier

            self.amountPaid = amountPaid

            self.itemSize = itemSize

            self.pdfLinks = pdfLinks

            self.unitPrice = unitPrice

            self.avlQty = avlQty

            self.affiliateMeta = affiliateMeta

            self.deliveryCharge = deliveryCharge

            self.affiliateStoreId = affiliateStoreId

            self.id = id

            self.transferPrice = transferPrice

            self.priceMarked = priceMarked

            self.itemId = itemId

            self.hsnCodeId = hsnCodeId

            self.fyndStoreId = fyndStoreId

            self.sellerIdentifier = sellerIdentifier

            self.modifiedOn = modifiedOn

            self.storeId = storeId

            self.priceEffective = priceEffective

            self.sku = sku
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            quantity = try container.decode(Int.self, forKey: .quantity)

            discount = try container.decode(Double.self, forKey: .discount)

            companyId = try container.decode(Int.self, forKey: .companyId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            id = try container.decode(String.self, forKey: .id)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            itemId = try container.decode(Int.self, forKey: .itemId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            storeId = try container.decode(Int.self, forKey: .storeId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            sku = try container.decode(String.self, forKey: .sku)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(sku, forKey: .sku)
        }
    }
}
