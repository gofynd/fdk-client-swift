

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var pdfLinks: MarketPlacePdf?

        public var companyId: Int

        public var discount: Double

        public var transferPrice: Int

        public var hsnCodeId: String

        public var amountPaid: Double

        public var quantity: Int

        public var priceMarked: Double

        public var sku: String

        public var avlQty: Int

        public var deliveryCharge: Double

        public var modifiedOn: String

        public var affiliateMeta: [String: Any]

        public var fyndStoreId: String

        public var id: String

        public var affiliateStoreId: String

        public var itemSize: String

        public var unitPrice: Double

        public var storeId: Int

        public var sellerIdentifier: String

        public var itemId: Int

        public var identifier: [String: Any]

        public var priceEffective: Double

        public enum CodingKeys: String, CodingKey {
            case pdfLinks = "pdf_links"

            case companyId = "company_id"

            case discount

            case transferPrice = "transfer_price"

            case hsnCodeId = "hsn_code_id"

            case amountPaid = "amount_paid"

            case quantity

            case priceMarked = "price_marked"

            case sku

            case avlQty = "avl_qty"

            case deliveryCharge = "delivery_charge"

            case modifiedOn = "modified_on"

            case affiliateMeta = "affiliate_meta"

            case fyndStoreId = "fynd_store_id"

            case id = "_id"

            case affiliateStoreId = "affiliate_store_id"

            case itemSize = "item_size"

            case unitPrice = "unit_price"

            case storeId = "store_id"

            case sellerIdentifier = "seller_identifier"

            case itemId = "item_id"

            case identifier

            case priceEffective = "price_effective"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.pdfLinks = pdfLinks

            self.companyId = companyId

            self.discount = discount

            self.transferPrice = transferPrice

            self.hsnCodeId = hsnCodeId

            self.amountPaid = amountPaid

            self.quantity = quantity

            self.priceMarked = priceMarked

            self.sku = sku

            self.avlQty = avlQty

            self.deliveryCharge = deliveryCharge

            self.modifiedOn = modifiedOn

            self.affiliateMeta = affiliateMeta

            self.fyndStoreId = fyndStoreId

            self.id = id

            self.affiliateStoreId = affiliateStoreId

            self.itemSize = itemSize

            self.unitPrice = unitPrice

            self.storeId = storeId

            self.sellerIdentifier = sellerIdentifier

            self.itemId = itemId

            self.identifier = identifier

            self.priceEffective = priceEffective
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            discount = try container.decode(Double.self, forKey: .discount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            quantity = try container.decode(Int.self, forKey: .quantity)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            sku = try container.decode(String.self, forKey: .sku)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            id = try container.decode(String.self, forKey: .id)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            storeId = try container.decode(Int.self, forKey: .storeId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            itemId = try container.decode(Int.self, forKey: .itemId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
        }
    }
}
