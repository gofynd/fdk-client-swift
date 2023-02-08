

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var companyId: Int

        public var unitPrice: Double

        public var id: String

        public var modifiedOn: String

        public var priceEffective: Double

        public var affiliateStoreId: String

        public var identifier: [String: Any]

        public var discount: Double

        public var sellerIdentifier: String

        public var affiliateMeta: [String: Any]

        public var itemSize: String

        public var transferPrice: Int

        public var quantity: Int

        public var avlQty: Int

        public var pdfLinks: MarketPlacePdf?

        public var storeId: Int

        public var hsnCodeId: String

        public var amountPaid: Double

        public var sku: String

        public var deliveryCharge: Double

        public var fyndStoreId: String

        public var priceMarked: Double

        public var itemId: Int

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case unitPrice = "unit_price"

            case id = "_id"

            case modifiedOn = "modified_on"

            case priceEffective = "price_effective"

            case affiliateStoreId = "affiliate_store_id"

            case identifier

            case discount

            case sellerIdentifier = "seller_identifier"

            case affiliateMeta = "affiliate_meta"

            case itemSize = "item_size"

            case transferPrice = "transfer_price"

            case quantity

            case avlQty = "avl_qty"

            case pdfLinks = "pdf_links"

            case storeId = "store_id"

            case hsnCodeId = "hsn_code_id"

            case amountPaid = "amount_paid"

            case sku

            case deliveryCharge = "delivery_charge"

            case fyndStoreId = "fynd_store_id"

            case priceMarked = "price_marked"

            case itemId = "item_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.companyId = companyId

            self.unitPrice = unitPrice

            self.id = id

            self.modifiedOn = modifiedOn

            self.priceEffective = priceEffective

            self.affiliateStoreId = affiliateStoreId

            self.identifier = identifier

            self.discount = discount

            self.sellerIdentifier = sellerIdentifier

            self.affiliateMeta = affiliateMeta

            self.itemSize = itemSize

            self.transferPrice = transferPrice

            self.quantity = quantity

            self.avlQty = avlQty

            self.pdfLinks = pdfLinks

            self.storeId = storeId

            self.hsnCodeId = hsnCodeId

            self.amountPaid = amountPaid

            self.sku = sku

            self.deliveryCharge = deliveryCharge

            self.fyndStoreId = fyndStoreId

            self.priceMarked = priceMarked

            self.itemId = itemId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            id = try container.decode(String.self, forKey: .id)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            discount = try container.decode(Double.self, forKey: .discount)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            quantity = try container.decode(Int.self, forKey: .quantity)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            sku = try container.decode(String.self, forKey: .sku)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            itemId = try container.decode(Int.self, forKey: .itemId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(itemId, forKey: .itemId)
        }
    }
}
