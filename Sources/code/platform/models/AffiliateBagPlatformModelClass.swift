

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var sku: String

        public var modifiedOn: String

        public var priceEffective: Double

        public var sellerIdentifier: String

        public var transferPrice: Int

        public var companyId: Int

        public var identifier: [String: Any]

        public var quantity: Int

        public var affiliateStoreId: String

        public var pdfLinks: MarketPlacePdf?

        public var hsnCodeId: String

        public var avlQty: Int

        public var discount: Double

        public var deliveryCharge: Double

        public var id: String

        public var storeId: Int

        public var itemSize: String

        public var unitPrice: Double

        public var amountPaid: Double

        public var priceMarked: Double

        public var itemId: Int

        public var affiliateMeta: [String: Any]

        public var fyndStoreId: String

        public enum CodingKeys: String, CodingKey {
            case sku

            case modifiedOn = "modified_on"

            case priceEffective = "price_effective"

            case sellerIdentifier = "seller_identifier"

            case transferPrice = "transfer_price"

            case companyId = "company_id"

            case identifier

            case quantity

            case affiliateStoreId = "affiliate_store_id"

            case pdfLinks = "pdf_links"

            case hsnCodeId = "hsn_code_id"

            case avlQty = "avl_qty"

            case discount

            case deliveryCharge = "delivery_charge"

            case id = "_id"

            case storeId = "store_id"

            case itemSize = "item_size"

            case unitPrice = "unit_price"

            case amountPaid = "amount_paid"

            case priceMarked = "price_marked"

            case itemId = "item_id"

            case affiliateMeta = "affiliate_meta"

            case fyndStoreId = "fynd_store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.sku = sku

            self.modifiedOn = modifiedOn

            self.priceEffective = priceEffective

            self.sellerIdentifier = sellerIdentifier

            self.transferPrice = transferPrice

            self.companyId = companyId

            self.identifier = identifier

            self.quantity = quantity

            self.affiliateStoreId = affiliateStoreId

            self.pdfLinks = pdfLinks

            self.hsnCodeId = hsnCodeId

            self.avlQty = avlQty

            self.discount = discount

            self.deliveryCharge = deliveryCharge

            self.id = id

            self.storeId = storeId

            self.itemSize = itemSize

            self.unitPrice = unitPrice

            self.amountPaid = amountPaid

            self.priceMarked = priceMarked

            self.itemId = itemId

            self.affiliateMeta = affiliateMeta

            self.fyndStoreId = fyndStoreId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sku = try container.decode(String.self, forKey: .sku)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            companyId = try container.decode(Int.self, forKey: .companyId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            discount = try container.decode(Double.self, forKey: .discount)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            id = try container.decode(String.self, forKey: .id)

            storeId = try container.decode(Int.self, forKey: .storeId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            itemId = try container.decode(Int.self, forKey: .itemId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)
        }
    }
}
