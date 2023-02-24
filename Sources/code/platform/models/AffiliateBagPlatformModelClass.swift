

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var sku: String

        public var pdfLinks: MarketPlacePdf?

        public var quantity: Int

        public var affiliateStoreId: String

        public var fyndStoreId: String

        public var itemId: Int

        public var sellerIdentifier: String

        public var modifiedOn: String

        public var transferPrice: Int

        public var id: String

        public var storeId: Int

        public var itemSize: String

        public var companyId: Int

        public var deliveryCharge: Double

        public var avlQty: Int

        public var affiliateMeta: [String: Any]

        public var discount: Double

        public var priceEffective: Double

        public var amountPaid: Double

        public var identifier: [String: Any]

        public var hsnCodeId: String

        public var unitPrice: Double

        public var priceMarked: Double

        public enum CodingKeys: String, CodingKey {
            case sku

            case pdfLinks = "pdf_links"

            case quantity

            case affiliateStoreId = "affiliate_store_id"

            case fyndStoreId = "fynd_store_id"

            case itemId = "item_id"

            case sellerIdentifier = "seller_identifier"

            case modifiedOn = "modified_on"

            case transferPrice = "transfer_price"

            case id = "_id"

            case storeId = "store_id"

            case itemSize = "item_size"

            case companyId = "company_id"

            case deliveryCharge = "delivery_charge"

            case avlQty = "avl_qty"

            case affiliateMeta = "affiliate_meta"

            case discount

            case priceEffective = "price_effective"

            case amountPaid = "amount_paid"

            case identifier

            case hsnCodeId = "hsn_code_id"

            case unitPrice = "unit_price"

            case priceMarked = "price_marked"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.sku = sku

            self.pdfLinks = pdfLinks

            self.quantity = quantity

            self.affiliateStoreId = affiliateStoreId

            self.fyndStoreId = fyndStoreId

            self.itemId = itemId

            self.sellerIdentifier = sellerIdentifier

            self.modifiedOn = modifiedOn

            self.transferPrice = transferPrice

            self.id = id

            self.storeId = storeId

            self.itemSize = itemSize

            self.companyId = companyId

            self.deliveryCharge = deliveryCharge

            self.avlQty = avlQty

            self.affiliateMeta = affiliateMeta

            self.discount = discount

            self.priceEffective = priceEffective

            self.amountPaid = amountPaid

            self.identifier = identifier

            self.hsnCodeId = hsnCodeId

            self.unitPrice = unitPrice

            self.priceMarked = priceMarked
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sku = try container.decode(String.self, forKey: .sku)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            id = try container.decode(String.self, forKey: .id)

            storeId = try container.decode(Int.self, forKey: .storeId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            companyId = try container.decode(Int.self, forKey: .companyId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            discount = try container.decode(Double.self, forKey: .discount)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
        }
    }
}
