

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var priceEffective: Double

        public var itemSize: String

        public var amountPaid: Double

        public var unitPrice: Double

        public var affiliateStoreId: String

        public var pdfLinks: MarketPlacePdf?

        public var hsnCodeId: String

        public var quantity: Int

        public var companyId: Int

        public var transferPrice: Int

        public var sku: String

        public var fyndStoreId: String

        public var identifier: [String: Any]

        public var priceMarked: Double

        public var sellerIdentifier: String

        public var id: String

        public var discount: Double

        public var affiliateMeta: [String: Any]

        public var deliveryCharge: Double

        public var storeId: Int

        public var avlQty: Int

        public var itemId: Int

        public var modifiedOn: String

        public enum CodingKeys: String, CodingKey {
            case priceEffective = "price_effective"

            case itemSize = "item_size"

            case amountPaid = "amount_paid"

            case unitPrice = "unit_price"

            case affiliateStoreId = "affiliate_store_id"

            case pdfLinks = "pdf_links"

            case hsnCodeId = "hsn_code_id"

            case quantity

            case companyId = "company_id"

            case transferPrice = "transfer_price"

            case sku

            case fyndStoreId = "fynd_store_id"

            case identifier

            case priceMarked = "price_marked"

            case sellerIdentifier = "seller_identifier"

            case id = "_id"

            case discount

            case affiliateMeta = "affiliate_meta"

            case deliveryCharge = "delivery_charge"

            case storeId = "store_id"

            case avlQty = "avl_qty"

            case itemId = "item_id"

            case modifiedOn = "modified_on"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.priceEffective = priceEffective

            self.itemSize = itemSize

            self.amountPaid = amountPaid

            self.unitPrice = unitPrice

            self.affiliateStoreId = affiliateStoreId

            self.pdfLinks = pdfLinks

            self.hsnCodeId = hsnCodeId

            self.quantity = quantity

            self.companyId = companyId

            self.transferPrice = transferPrice

            self.sku = sku

            self.fyndStoreId = fyndStoreId

            self.identifier = identifier

            self.priceMarked = priceMarked

            self.sellerIdentifier = sellerIdentifier

            self.id = id

            self.discount = discount

            self.affiliateMeta = affiliateMeta

            self.deliveryCharge = deliveryCharge

            self.storeId = storeId

            self.avlQty = avlQty

            self.itemId = itemId

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            companyId = try container.decode(Int.self, forKey: .companyId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            sku = try container.decode(String.self, forKey: .sku)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            id = try container.decode(String.self, forKey: .id)

            discount = try container.decode(Double.self, forKey: .discount)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            storeId = try container.decode(Int.self, forKey: .storeId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            itemId = try container.decode(Int.self, forKey: .itemId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }
}
