

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var quantity: Int

        public var itemId: Int

        public var fyndStoreId: String

        public var discount: Double

        public var id: String

        public var priceEffective: Double

        public var transferPrice: Int

        public var hsnCodeId: String

        public var itemSize: String

        public var amountPaid: Double

        public var identifier: [String: Any]

        public var pdfLinks: MarketPlacePdf?

        public var affiliateMeta: [String: Any]

        public var sku: String

        public var avlQty: Int

        public var deliveryCharge: Double

        public var sellerIdentifier: String

        public var companyId: Int

        public var affiliateStoreId: String

        public var unitPrice: Double

        public var storeId: Int

        public var modifiedOn: String

        public var priceMarked: Double

        public enum CodingKeys: String, CodingKey {
            case quantity

            case itemId = "item_id"

            case fyndStoreId = "fynd_store_id"

            case discount

            case id = "_id"

            case priceEffective = "price_effective"

            case transferPrice = "transfer_price"

            case hsnCodeId = "hsn_code_id"

            case itemSize = "item_size"

            case amountPaid = "amount_paid"

            case identifier

            case pdfLinks = "pdf_links"

            case affiliateMeta = "affiliate_meta"

            case sku

            case avlQty = "avl_qty"

            case deliveryCharge = "delivery_charge"

            case sellerIdentifier = "seller_identifier"

            case companyId = "company_id"

            case affiliateStoreId = "affiliate_store_id"

            case unitPrice = "unit_price"

            case storeId = "store_id"

            case modifiedOn = "modified_on"

            case priceMarked = "price_marked"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.quantity = quantity

            self.itemId = itemId

            self.fyndStoreId = fyndStoreId

            self.discount = discount

            self.id = id

            self.priceEffective = priceEffective

            self.transferPrice = transferPrice

            self.hsnCodeId = hsnCodeId

            self.itemSize = itemSize

            self.amountPaid = amountPaid

            self.identifier = identifier

            self.pdfLinks = pdfLinks

            self.affiliateMeta = affiliateMeta

            self.sku = sku

            self.avlQty = avlQty

            self.deliveryCharge = deliveryCharge

            self.sellerIdentifier = sellerIdentifier

            self.companyId = companyId

            self.affiliateStoreId = affiliateStoreId

            self.unitPrice = unitPrice

            self.storeId = storeId

            self.modifiedOn = modifiedOn

            self.priceMarked = priceMarked
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            quantity = try container.decode(Int.self, forKey: .quantity)

            itemId = try container.decode(Int.self, forKey: .itemId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            discount = try container.decode(Double.self, forKey: .discount)

            id = try container.decode(String.self, forKey: .id)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            sku = try container.decode(String.self, forKey: .sku)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            companyId = try container.decode(Int.self, forKey: .companyId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            storeId = try container.decode(Int.self, forKey: .storeId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
        }
    }
}
