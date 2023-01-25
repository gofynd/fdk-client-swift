

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var itemSize: String

        public var priceEffective: Double

        public var avlQty: Int

        public var identifier: [String: Any]

        public var sellerIdentifier: String

        public var pdfLinks: MarketPlacePdf?

        public var transferPrice: Int

        public var quantity: Int

        public var discount: Double

        public var storeId: Int

        public var unitPrice: Double

        public var deliveryCharge: Double

        public var amountPaid: Double

        public var hsnCodeId: String

        public var affiliateMeta: [String: Any]

        public var id: String

        public var affiliateStoreId: String

        public var itemId: Int

        public var companyId: Int

        public var modifiedOn: String

        public var fyndStoreId: String

        public var sku: String

        public var priceMarked: Double

        public enum CodingKeys: String, CodingKey {
            case itemSize = "item_size"

            case priceEffective = "price_effective"

            case avlQty = "avl_qty"

            case identifier

            case sellerIdentifier = "seller_identifier"

            case pdfLinks = "pdf_links"

            case transferPrice = "transfer_price"

            case quantity

            case discount

            case storeId = "store_id"

            case unitPrice = "unit_price"

            case deliveryCharge = "delivery_charge"

            case amountPaid = "amount_paid"

            case hsnCodeId = "hsn_code_id"

            case affiliateMeta = "affiliate_meta"

            case id = "_id"

            case affiliateStoreId = "affiliate_store_id"

            case itemId = "item_id"

            case companyId = "company_id"

            case modifiedOn = "modified_on"

            case fyndStoreId = "fynd_store_id"

            case sku

            case priceMarked = "price_marked"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.itemSize = itemSize

            self.priceEffective = priceEffective

            self.avlQty = avlQty

            self.identifier = identifier

            self.sellerIdentifier = sellerIdentifier

            self.pdfLinks = pdfLinks

            self.transferPrice = transferPrice

            self.quantity = quantity

            self.discount = discount

            self.storeId = storeId

            self.unitPrice = unitPrice

            self.deliveryCharge = deliveryCharge

            self.amountPaid = amountPaid

            self.hsnCodeId = hsnCodeId

            self.affiliateMeta = affiliateMeta

            self.id = id

            self.affiliateStoreId = affiliateStoreId

            self.itemId = itemId

            self.companyId = companyId

            self.modifiedOn = modifiedOn

            self.fyndStoreId = fyndStoreId

            self.sku = sku

            self.priceMarked = priceMarked
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            quantity = try container.decode(Int.self, forKey: .quantity)

            discount = try container.decode(Double.self, forKey: .discount)

            storeId = try container.decode(Int.self, forKey: .storeId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            id = try container.decode(String.self, forKey: .id)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            sku = try container.decode(String.self, forKey: .sku)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
        }
    }
}
