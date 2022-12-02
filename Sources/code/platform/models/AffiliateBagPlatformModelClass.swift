

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var amountPaid: Double

        public var quantity: Int

        public var pdfLinks: MarketPlacePdf?

        public var unitPrice: Double

        public var deliveryCharge: Double

        public var fyndStoreId: String

        public var sellerIdentifier: String

        public var id: String

        public var discount: Double

        public var itemId: Int

        public var transferPrice: Int

        public var hsnCodeId: String

        public var affiliateMeta: [String: Any]

        public var avlQty: Int

        public var identifier: [String: Any]

        public var storeId: Int

        public var sku: String

        public var affiliateStoreId: String

        public var priceEffective: Double

        public var companyId: Int

        public var modifiedOn: String

        public var itemSize: String

        public var priceMarked: Double

        public enum CodingKeys: String, CodingKey {
            case amountPaid = "amount_paid"

            case quantity

            case pdfLinks = "pdf_links"

            case unitPrice = "unit_price"

            case deliveryCharge = "delivery_charge"

            case fyndStoreId = "fynd_store_id"

            case sellerIdentifier = "seller_identifier"

            case id = "_id"

            case discount

            case itemId = "item_id"

            case transferPrice = "transfer_price"

            case hsnCodeId = "hsn_code_id"

            case affiliateMeta = "affiliate_meta"

            case avlQty = "avl_qty"

            case identifier

            case storeId = "store_id"

            case sku

            case affiliateStoreId = "affiliate_store_id"

            case priceEffective = "price_effective"

            case companyId = "company_id"

            case modifiedOn = "modified_on"

            case itemSize = "item_size"

            case priceMarked = "price_marked"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.amountPaid = amountPaid

            self.quantity = quantity

            self.pdfLinks = pdfLinks

            self.unitPrice = unitPrice

            self.deliveryCharge = deliveryCharge

            self.fyndStoreId = fyndStoreId

            self.sellerIdentifier = sellerIdentifier

            self.id = id

            self.discount = discount

            self.itemId = itemId

            self.transferPrice = transferPrice

            self.hsnCodeId = hsnCodeId

            self.affiliateMeta = affiliateMeta

            self.avlQty = avlQty

            self.identifier = identifier

            self.storeId = storeId

            self.sku = sku

            self.affiliateStoreId = affiliateStoreId

            self.priceEffective = priceEffective

            self.companyId = companyId

            self.modifiedOn = modifiedOn

            self.itemSize = itemSize

            self.priceMarked = priceMarked
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            quantity = try container.decode(Int.self, forKey: .quantity)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            id = try container.decode(String.self, forKey: .id)

            discount = try container.decode(Double.self, forKey: .discount)

            itemId = try container.decode(Int.self, forKey: .itemId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            sku = try container.decode(String.self, forKey: .sku)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            companyId = try container.decode(Int.self, forKey: .companyId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
        }
    }
}
