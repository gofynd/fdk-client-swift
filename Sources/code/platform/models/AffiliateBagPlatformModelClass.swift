

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var fyndStoreId: String

        public var discount: Double

        public var itemSize: String

        public var transferPrice: Int

        public var quantity: Int

        public var companyId: Int

        public var affiliateMeta: [String: Any]

        public var storeId: Int

        public var pdfLinks: MarketPlacePdf?

        public var itemId: Int

        public var hsnCodeId: String

        public var sku: String

        public var modifiedOn: String

        public var priceMarked: Double

        public var amountPaid: Double

        public var affiliateStoreId: String

        public var identifier: [String: Any]

        public var unitPrice: Double

        public var deliveryCharge: Double

        public var id: String

        public var sellerIdentifier: String

        public var avlQty: Int

        public var priceEffective: Double

        public enum CodingKeys: String, CodingKey {
            case fyndStoreId = "fynd_store_id"

            case discount

            case itemSize = "item_size"

            case transferPrice = "transfer_price"

            case quantity

            case companyId = "company_id"

            case affiliateMeta = "affiliate_meta"

            case storeId = "store_id"

            case pdfLinks = "pdf_links"

            case itemId = "item_id"

            case hsnCodeId = "hsn_code_id"

            case sku

            case modifiedOn = "modified_on"

            case priceMarked = "price_marked"

            case amountPaid = "amount_paid"

            case affiliateStoreId = "affiliate_store_id"

            case identifier

            case unitPrice = "unit_price"

            case deliveryCharge = "delivery_charge"

            case id = "_id"

            case sellerIdentifier = "seller_identifier"

            case avlQty = "avl_qty"

            case priceEffective = "price_effective"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.fyndStoreId = fyndStoreId

            self.discount = discount

            self.itemSize = itemSize

            self.transferPrice = transferPrice

            self.quantity = quantity

            self.companyId = companyId

            self.affiliateMeta = affiliateMeta

            self.storeId = storeId

            self.pdfLinks = pdfLinks

            self.itemId = itemId

            self.hsnCodeId = hsnCodeId

            self.sku = sku

            self.modifiedOn = modifiedOn

            self.priceMarked = priceMarked

            self.amountPaid = amountPaid

            self.affiliateStoreId = affiliateStoreId

            self.identifier = identifier

            self.unitPrice = unitPrice

            self.deliveryCharge = deliveryCharge

            self.id = id

            self.sellerIdentifier = sellerIdentifier

            self.avlQty = avlQty

            self.priceEffective = priceEffective
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            discount = try container.decode(Double.self, forKey: .discount)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            quantity = try container.decode(Int.self, forKey: .quantity)

            companyId = try container.decode(Int.self, forKey: .companyId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            storeId = try container.decode(Int.self, forKey: .storeId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            sku = try container.decode(String.self, forKey: .sku)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            id = try container.decode(String.self, forKey: .id)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
        }
    }
}
