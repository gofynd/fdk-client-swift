

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var priceEffective: Double

        public var sku: String

        public var quantity: Int

        public var fyndStoreId: String

        public var unitPrice: Double

        public var companyId: Int

        public var affiliateMeta: [String: Any]

        public var pdfLinks: MarketPlacePdf?

        public var deliveryCharge: Double

        public var identifier: [String: Any]

        public var id: String

        public var storeId: Int

        public var discount: Double

        public var hsnCodeId: String

        public var affiliateStoreId: String

        public var itemId: Int

        public var modifiedOn: String

        public var avlQty: Int

        public var priceMarked: Double

        public var sellerIdentifier: String

        public var amountPaid: Double

        public var itemSize: String

        public var transferPrice: Int

        public enum CodingKeys: String, CodingKey {
            case priceEffective = "price_effective"

            case sku

            case quantity

            case fyndStoreId = "fynd_store_id"

            case unitPrice = "unit_price"

            case companyId = "company_id"

            case affiliateMeta = "affiliate_meta"

            case pdfLinks = "pdf_links"

            case deliveryCharge = "delivery_charge"

            case identifier

            case id = "_id"

            case storeId = "store_id"

            case discount

            case hsnCodeId = "hsn_code_id"

            case affiliateStoreId = "affiliate_store_id"

            case itemId = "item_id"

            case modifiedOn = "modified_on"

            case avlQty = "avl_qty"

            case priceMarked = "price_marked"

            case sellerIdentifier = "seller_identifier"

            case amountPaid = "amount_paid"

            case itemSize = "item_size"

            case transferPrice = "transfer_price"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.priceEffective = priceEffective

            self.sku = sku

            self.quantity = quantity

            self.fyndStoreId = fyndStoreId

            self.unitPrice = unitPrice

            self.companyId = companyId

            self.affiliateMeta = affiliateMeta

            self.pdfLinks = pdfLinks

            self.deliveryCharge = deliveryCharge

            self.identifier = identifier

            self.id = id

            self.storeId = storeId

            self.discount = discount

            self.hsnCodeId = hsnCodeId

            self.affiliateStoreId = affiliateStoreId

            self.itemId = itemId

            self.modifiedOn = modifiedOn

            self.avlQty = avlQty

            self.priceMarked = priceMarked

            self.sellerIdentifier = sellerIdentifier

            self.amountPaid = amountPaid

            self.itemSize = itemSize

            self.transferPrice = transferPrice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            sku = try container.decode(String.self, forKey: .sku)

            quantity = try container.decode(Int.self, forKey: .quantity)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            companyId = try container.decode(Int.self, forKey: .companyId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            id = try container.decode(String.self, forKey: .id)

            storeId = try container.decode(Int.self, forKey: .storeId)

            discount = try container.decode(Double.self, forKey: .discount)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)
        }
    }
}
