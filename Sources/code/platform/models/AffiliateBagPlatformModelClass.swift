

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var affiliateStoreId: String

        public var priceEffective: Double

        public var avlQty: Int

        public var itemSize: String

        public var fyndStoreId: String

        public var id: String

        public var deliveryCharge: Double

        public var identifier: [String: Any]

        public var modifiedOn: String

        public var transferPrice: Int

        public var unitPrice: Double

        public var pdfLinks: MarketPlacePdf?

        public var itemId: Int

        public var storeId: Int

        public var sellerIdentifier: String

        public var amountPaid: Double

        public var affiliateMeta: [String: Any]

        public var sku: String

        public var priceMarked: Double

        public var discount: Double

        public var hsnCodeId: String

        public var companyId: Int

        public var quantity: Int

        public enum CodingKeys: String, CodingKey {
            case affiliateStoreId = "affiliate_store_id"

            case priceEffective = "price_effective"

            case avlQty = "avl_qty"

            case itemSize = "item_size"

            case fyndStoreId = "fynd_store_id"

            case id = "_id"

            case deliveryCharge = "delivery_charge"

            case identifier

            case modifiedOn = "modified_on"

            case transferPrice = "transfer_price"

            case unitPrice = "unit_price"

            case pdfLinks = "pdf_links"

            case itemId = "item_id"

            case storeId = "store_id"

            case sellerIdentifier = "seller_identifier"

            case amountPaid = "amount_paid"

            case affiliateMeta = "affiliate_meta"

            case sku

            case priceMarked = "price_marked"

            case discount

            case hsnCodeId = "hsn_code_id"

            case companyId = "company_id"

            case quantity
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.affiliateStoreId = affiliateStoreId

            self.priceEffective = priceEffective

            self.avlQty = avlQty

            self.itemSize = itemSize

            self.fyndStoreId = fyndStoreId

            self.id = id

            self.deliveryCharge = deliveryCharge

            self.identifier = identifier

            self.modifiedOn = modifiedOn

            self.transferPrice = transferPrice

            self.unitPrice = unitPrice

            self.pdfLinks = pdfLinks

            self.itemId = itemId

            self.storeId = storeId

            self.sellerIdentifier = sellerIdentifier

            self.amountPaid = amountPaid

            self.affiliateMeta = affiliateMeta

            self.sku = sku

            self.priceMarked = priceMarked

            self.discount = discount

            self.hsnCodeId = hsnCodeId

            self.companyId = companyId

            self.quantity = quantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            id = try container.decode(String.self, forKey: .id)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            sku = try container.decode(String.self, forKey: .sku)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            discount = try container.decode(Double.self, forKey: .discount)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            quantity = try container.decode(Int.self, forKey: .quantity)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }
}
