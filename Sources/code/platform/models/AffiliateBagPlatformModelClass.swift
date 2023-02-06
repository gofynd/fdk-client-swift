

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var modifiedOn: String

        public var unitPrice: Double

        public var affiliateMeta: [String: Any]

        public var affiliateStoreId: String

        public var amountPaid: Double

        public var transferPrice: Int

        public var discount: Double

        public var priceMarked: Double

        public var companyId: Int

        public var pdfLinks: MarketPlacePdf?

        public var hsnCodeId: String

        public var itemSize: String

        public var sku: String

        public var avlQty: Int

        public var fyndStoreId: String

        public var deliveryCharge: Double

        public var quantity: Int

        public var id: String

        public var sellerIdentifier: String

        public var itemId: Int

        public var storeId: Int

        public var identifier: [String: Any]

        public var priceEffective: Double

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case unitPrice = "unit_price"

            case affiliateMeta = "affiliate_meta"

            case affiliateStoreId = "affiliate_store_id"

            case amountPaid = "amount_paid"

            case transferPrice = "transfer_price"

            case discount

            case priceMarked = "price_marked"

            case companyId = "company_id"

            case pdfLinks = "pdf_links"

            case hsnCodeId = "hsn_code_id"

            case itemSize = "item_size"

            case sku

            case avlQty = "avl_qty"

            case fyndStoreId = "fynd_store_id"

            case deliveryCharge = "delivery_charge"

            case quantity

            case id = "_id"

            case sellerIdentifier = "seller_identifier"

            case itemId = "item_id"

            case storeId = "store_id"

            case identifier

            case priceEffective = "price_effective"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.modifiedOn = modifiedOn

            self.unitPrice = unitPrice

            self.affiliateMeta = affiliateMeta

            self.affiliateStoreId = affiliateStoreId

            self.amountPaid = amountPaid

            self.transferPrice = transferPrice

            self.discount = discount

            self.priceMarked = priceMarked

            self.companyId = companyId

            self.pdfLinks = pdfLinks

            self.hsnCodeId = hsnCodeId

            self.itemSize = itemSize

            self.sku = sku

            self.avlQty = avlQty

            self.fyndStoreId = fyndStoreId

            self.deliveryCharge = deliveryCharge

            self.quantity = quantity

            self.id = id

            self.sellerIdentifier = sellerIdentifier

            self.itemId = itemId

            self.storeId = storeId

            self.identifier = identifier

            self.priceEffective = priceEffective
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            discount = try container.decode(Double.self, forKey: .discount)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            sku = try container.decode(String.self, forKey: .sku)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            quantity = try container.decode(Int.self, forKey: .quantity)

            id = try container.decode(String.self, forKey: .id)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            itemId = try container.decode(Int.self, forKey: .itemId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
        }
    }
}
