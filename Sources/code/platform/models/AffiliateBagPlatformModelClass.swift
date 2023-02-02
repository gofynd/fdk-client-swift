

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var avlQty: Int

        public var priceMarked: Double

        public var itemSize: String

        public var companyId: Int

        public var modifiedOn: String

        public var sellerIdentifier: String

        public var fyndStoreId: String

        public var itemId: Int

        public var affiliateStoreId: String

        public var deliveryCharge: Double

        public var sku: String

        public var unitPrice: Double

        public var storeId: Int

        public var quantity: Int

        public var amountPaid: Double

        public var id: String

        public var identifier: [String: Any]

        public var pdfLinks: MarketPlacePdf?

        public var hsnCodeId: String

        public var affiliateMeta: [String: Any]

        public var discount: Double

        public var transferPrice: Int

        public var priceEffective: Double

        public enum CodingKeys: String, CodingKey {
            case avlQty = "avl_qty"

            case priceMarked = "price_marked"

            case itemSize = "item_size"

            case companyId = "company_id"

            case modifiedOn = "modified_on"

            case sellerIdentifier = "seller_identifier"

            case fyndStoreId = "fynd_store_id"

            case itemId = "item_id"

            case affiliateStoreId = "affiliate_store_id"

            case deliveryCharge = "delivery_charge"

            case sku

            case unitPrice = "unit_price"

            case storeId = "store_id"

            case quantity

            case amountPaid = "amount_paid"

            case id = "_id"

            case identifier

            case pdfLinks = "pdf_links"

            case hsnCodeId = "hsn_code_id"

            case affiliateMeta = "affiliate_meta"

            case discount

            case transferPrice = "transfer_price"

            case priceEffective = "price_effective"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.avlQty = avlQty

            self.priceMarked = priceMarked

            self.itemSize = itemSize

            self.companyId = companyId

            self.modifiedOn = modifiedOn

            self.sellerIdentifier = sellerIdentifier

            self.fyndStoreId = fyndStoreId

            self.itemId = itemId

            self.affiliateStoreId = affiliateStoreId

            self.deliveryCharge = deliveryCharge

            self.sku = sku

            self.unitPrice = unitPrice

            self.storeId = storeId

            self.quantity = quantity

            self.amountPaid = amountPaid

            self.id = id

            self.identifier = identifier

            self.pdfLinks = pdfLinks

            self.hsnCodeId = hsnCodeId

            self.affiliateMeta = affiliateMeta

            self.discount = discount

            self.transferPrice = transferPrice

            self.priceEffective = priceEffective
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            companyId = try container.decode(Int.self, forKey: .companyId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            sku = try container.decode(String.self, forKey: .sku)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            storeId = try container.decode(Int.self, forKey: .storeId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            id = try container.decode(String.self, forKey: .id)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            discount = try container.decode(Double.self, forKey: .discount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
        }
    }
}
