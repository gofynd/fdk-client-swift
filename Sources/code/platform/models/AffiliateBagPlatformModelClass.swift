

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var transferPrice: Int

        public var priceMarked: Double

        public var identifier: [String: Any]

        public var unitPrice: Double

        public var quantity: Int

        public var hsnCodeId: String

        public var storeId: Int

        public var sellerIdentifier: String

        public var companyId: Int

        public var deliveryCharge: Double

        public var sku: String

        public var priceEffective: Double

        public var affiliateMeta: [String: Any]

        public var id: String

        public var pdfLinks: MarketPlacePdf?

        public var affiliateStoreId: String

        public var itemId: Int

        public var itemSize: String

        public var modifiedOn: String

        public var fyndStoreId: String

        public var amountPaid: Double

        public var discount: Double

        public var avlQty: Int

        public enum CodingKeys: String, CodingKey {
            case transferPrice = "transfer_price"

            case priceMarked = "price_marked"

            case identifier

            case unitPrice = "unit_price"

            case quantity

            case hsnCodeId = "hsn_code_id"

            case storeId = "store_id"

            case sellerIdentifier = "seller_identifier"

            case companyId = "company_id"

            case deliveryCharge = "delivery_charge"

            case sku

            case priceEffective = "price_effective"

            case affiliateMeta = "affiliate_meta"

            case id = "_id"

            case pdfLinks = "pdf_links"

            case affiliateStoreId = "affiliate_store_id"

            case itemId = "item_id"

            case itemSize = "item_size"

            case modifiedOn = "modified_on"

            case fyndStoreId = "fynd_store_id"

            case amountPaid = "amount_paid"

            case discount

            case avlQty = "avl_qty"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.transferPrice = transferPrice

            self.priceMarked = priceMarked

            self.identifier = identifier

            self.unitPrice = unitPrice

            self.quantity = quantity

            self.hsnCodeId = hsnCodeId

            self.storeId = storeId

            self.sellerIdentifier = sellerIdentifier

            self.companyId = companyId

            self.deliveryCharge = deliveryCharge

            self.sku = sku

            self.priceEffective = priceEffective

            self.affiliateMeta = affiliateMeta

            self.id = id

            self.pdfLinks = pdfLinks

            self.affiliateStoreId = affiliateStoreId

            self.itemId = itemId

            self.itemSize = itemSize

            self.modifiedOn = modifiedOn

            self.fyndStoreId = fyndStoreId

            self.amountPaid = amountPaid

            self.discount = discount

            self.avlQty = avlQty
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            quantity = try container.decode(Int.self, forKey: .quantity)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            companyId = try container.decode(Int.self, forKey: .companyId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            sku = try container.decode(String.self, forKey: .sku)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            id = try container.decode(String.self, forKey: .id)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            discount = try container.decode(Double.self, forKey: .discount)

            avlQty = try container.decode(Int.self, forKey: .avlQty)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)
        }
    }
}
