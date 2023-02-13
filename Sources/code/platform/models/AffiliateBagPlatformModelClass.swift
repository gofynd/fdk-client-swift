

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var priceMarked: Double

        public var unitPrice: Double

        public var quantity: Int

        public var identifier: [String: Any]

        public var storeId: Int

        public var avlQty: Int

        public var pdfLinks: MarketPlacePdf?

        public var fyndStoreId: String

        public var priceEffective: Double

        public var sellerIdentifier: String

        public var hsnCodeId: String

        public var itemId: Int

        public var discount: Double

        public var sku: String

        public var companyId: Int

        public var transferPrice: Int

        public var deliveryCharge: Double

        public var affiliateStoreId: String

        public var id: String

        public var itemSize: String

        public var amountPaid: Double

        public var affiliateMeta: [String: Any]

        public var modifiedOn: String

        public enum CodingKeys: String, CodingKey {
            case priceMarked = "price_marked"

            case unitPrice = "unit_price"

            case quantity

            case identifier

            case storeId = "store_id"

            case avlQty = "avl_qty"

            case pdfLinks = "pdf_links"

            case fyndStoreId = "fynd_store_id"

            case priceEffective = "price_effective"

            case sellerIdentifier = "seller_identifier"

            case hsnCodeId = "hsn_code_id"

            case itemId = "item_id"

            case discount

            case sku

            case companyId = "company_id"

            case transferPrice = "transfer_price"

            case deliveryCharge = "delivery_charge"

            case affiliateStoreId = "affiliate_store_id"

            case id = "_id"

            case itemSize = "item_size"

            case amountPaid = "amount_paid"

            case affiliateMeta = "affiliate_meta"

            case modifiedOn = "modified_on"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.priceMarked = priceMarked

            self.unitPrice = unitPrice

            self.quantity = quantity

            self.identifier = identifier

            self.storeId = storeId

            self.avlQty = avlQty

            self.pdfLinks = pdfLinks

            self.fyndStoreId = fyndStoreId

            self.priceEffective = priceEffective

            self.sellerIdentifier = sellerIdentifier

            self.hsnCodeId = hsnCodeId

            self.itemId = itemId

            self.discount = discount

            self.sku = sku

            self.companyId = companyId

            self.transferPrice = transferPrice

            self.deliveryCharge = deliveryCharge

            self.affiliateStoreId = affiliateStoreId

            self.id = id

            self.itemSize = itemSize

            self.amountPaid = amountPaid

            self.affiliateMeta = affiliateMeta

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            quantity = try container.decode(Int.self, forKey: .quantity)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            discount = try container.decode(Double.self, forKey: .discount)

            sku = try container.decode(String.self, forKey: .sku)

            companyId = try container.decode(Int.self, forKey: .companyId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            id = try container.decode(String.self, forKey: .id)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }
}
