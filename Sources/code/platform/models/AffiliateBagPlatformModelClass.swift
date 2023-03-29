

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var storeId: Int

        public var affiliateStoreId: String

        public var deliveryCharge: Double

        public var affiliateMeta: [String: Any]

        public var identifier: [String: Any]

        public var amountPaid: Double

        public var discount: Double

        public var transferPrice: Int

        public var hsnCodeId: String

        public var sellerIdentifier: String

        public var avlQty: Int

        public var pdfLinks: MarketPlacePdf?

        public var priceEffective: Double

        public var quantity: Int

        public var unitPrice: Double

        public var priceMarked: Double

        public var modifiedOn: String

        public var itemId: Int

        public var itemSize: String

        public var companyId: Int

        public var id: String

        public var fyndStoreId: String

        public var sku: String

        public enum CodingKeys: String, CodingKey {
            case storeId = "store_id"

            case affiliateStoreId = "affiliate_store_id"

            case deliveryCharge = "delivery_charge"

            case affiliateMeta = "affiliate_meta"

            case identifier

            case amountPaid = "amount_paid"

            case discount

            case transferPrice = "transfer_price"

            case hsnCodeId = "hsn_code_id"

            case sellerIdentifier = "seller_identifier"

            case avlQty = "avl_qty"

            case pdfLinks = "pdf_links"

            case priceEffective = "price_effective"

            case quantity

            case unitPrice = "unit_price"

            case priceMarked = "price_marked"

            case modifiedOn = "modified_on"

            case itemId = "item_id"

            case itemSize = "item_size"

            case companyId = "company_id"

            case id = "_id"

            case fyndStoreId = "fynd_store_id"

            case sku
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.storeId = storeId

            self.affiliateStoreId = affiliateStoreId

            self.deliveryCharge = deliveryCharge

            self.affiliateMeta = affiliateMeta

            self.identifier = identifier

            self.amountPaid = amountPaid

            self.discount = discount

            self.transferPrice = transferPrice

            self.hsnCodeId = hsnCodeId

            self.sellerIdentifier = sellerIdentifier

            self.avlQty = avlQty

            self.pdfLinks = pdfLinks

            self.priceEffective = priceEffective

            self.quantity = quantity

            self.unitPrice = unitPrice

            self.priceMarked = priceMarked

            self.modifiedOn = modifiedOn

            self.itemId = itemId

            self.itemSize = itemSize

            self.companyId = companyId

            self.id = id

            self.fyndStoreId = fyndStoreId

            self.sku = sku
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeId = try container.decode(Int.self, forKey: .storeId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            discount = try container.decode(Double.self, forKey: .discount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            quantity = try container.decode(Int.self, forKey: .quantity)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            itemId = try container.decode(Int.self, forKey: .itemId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            companyId = try container.decode(Int.self, forKey: .companyId)

            id = try container.decode(String.self, forKey: .id)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            sku = try container.decode(String.self, forKey: .sku)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(sku, forKey: .sku)
        }
    }
}
