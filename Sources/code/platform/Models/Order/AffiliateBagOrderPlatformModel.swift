

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var storeId: Int

        public var itemSize: String

        public var discount: Double

        public var itemId: Int

        public var quantity: Int

        public var amountPaid: Double

        public var identifier: [String: Any]

        public var affiliateMeta: [String: Any]

        public var fyndStoreId: String

        public var companyId: Int

        public var unitPrice: Double

        public var hsnCodeId: String

        public var priceEffective: Double

        public var priceMarked: Double

        public var sellerIdentifier: String

        public var transferPrice: Int

        public var modifiedOn: String

        public var deliveryCharge: Double

        public var sku: String

        public var id: String

        public var pdfLinks: MarketPlacePdf?

        public var avlQty: Int

        public var affiliateStoreId: String

        public enum CodingKeys: String, CodingKey {
            case storeId = "store_id"

            case itemSize = "item_size"

            case discount

            case itemId = "item_id"

            case quantity

            case amountPaid = "amount_paid"

            case identifier

            case affiliateMeta = "affiliate_meta"

            case fyndStoreId = "fynd_store_id"

            case companyId = "company_id"

            case unitPrice = "unit_price"

            case hsnCodeId = "hsn_code_id"

            case priceEffective = "price_effective"

            case priceMarked = "price_marked"

            case sellerIdentifier = "seller_identifier"

            case transferPrice = "transfer_price"

            case modifiedOn = "modified_on"

            case deliveryCharge = "delivery_charge"

            case sku

            case id = "_id"

            case pdfLinks = "pdf_links"

            case avlQty = "avl_qty"

            case affiliateStoreId = "affiliate_store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.storeId = storeId

            self.itemSize = itemSize

            self.discount = discount

            self.itemId = itemId

            self.quantity = quantity

            self.amountPaid = amountPaid

            self.identifier = identifier

            self.affiliateMeta = affiliateMeta

            self.fyndStoreId = fyndStoreId

            self.companyId = companyId

            self.unitPrice = unitPrice

            self.hsnCodeId = hsnCodeId

            self.priceEffective = priceEffective

            self.priceMarked = priceMarked

            self.sellerIdentifier = sellerIdentifier

            self.transferPrice = transferPrice

            self.modifiedOn = modifiedOn

            self.deliveryCharge = deliveryCharge

            self.sku = sku

            self.id = id

            self.pdfLinks = pdfLinks

            self.avlQty = avlQty

            self.affiliateStoreId = affiliateStoreId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeId = try container.decode(Int.self, forKey: .storeId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            discount = try container.decode(Double.self, forKey: .discount)

            itemId = try container.decode(Int.self, forKey: .itemId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            sku = try container.decode(String.self, forKey: .sku)

            id = try container.decode(String.self, forKey: .id)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var storeId: Int

        public var itemSize: String

        public var discount: Double

        public var itemId: Int

        public var quantity: Int

        public var amountPaid: Double

        public var identifier: [String: Any]

        public var affiliateMeta: [String: Any]

        public var fyndStoreId: String

        public var companyId: Int

        public var unitPrice: Double

        public var hsnCodeId: String

        public var priceEffective: Double

        public var priceMarked: Double

        public var sellerIdentifier: String

        public var transferPrice: Int

        public var modifiedOn: String

        public var deliveryCharge: Double

        public var sku: String

        public var id: String

        public var pdfLinks: MarketPlacePdf?

        public var avlQty: Int

        public var affiliateStoreId: String

        public enum CodingKeys: String, CodingKey {
            case storeId = "store_id"

            case itemSize = "item_size"

            case discount

            case itemId = "item_id"

            case quantity

            case amountPaid = "amount_paid"

            case identifier

            case affiliateMeta = "affiliate_meta"

            case fyndStoreId = "fynd_store_id"

            case companyId = "company_id"

            case unitPrice = "unit_price"

            case hsnCodeId = "hsn_code_id"

            case priceEffective = "price_effective"

            case priceMarked = "price_marked"

            case sellerIdentifier = "seller_identifier"

            case transferPrice = "transfer_price"

            case modifiedOn = "modified_on"

            case deliveryCharge = "delivery_charge"

            case sku

            case id = "_id"

            case pdfLinks = "pdf_links"

            case avlQty = "avl_qty"

            case affiliateStoreId = "affiliate_store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.storeId = storeId

            self.itemSize = itemSize

            self.discount = discount

            self.itemId = itemId

            self.quantity = quantity

            self.amountPaid = amountPaid

            self.identifier = identifier

            self.affiliateMeta = affiliateMeta

            self.fyndStoreId = fyndStoreId

            self.companyId = companyId

            self.unitPrice = unitPrice

            self.hsnCodeId = hsnCodeId

            self.priceEffective = priceEffective

            self.priceMarked = priceMarked

            self.sellerIdentifier = sellerIdentifier

            self.transferPrice = transferPrice

            self.modifiedOn = modifiedOn

            self.deliveryCharge = deliveryCharge

            self.sku = sku

            self.id = id

            self.pdfLinks = pdfLinks

            self.avlQty = avlQty

            self.affiliateStoreId = affiliateStoreId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeId = try container.decode(Int.self, forKey: .storeId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            discount = try container.decode(Double.self, forKey: .discount)

            itemId = try container.decode(Int.self, forKey: .itemId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            sku = try container.decode(String.self, forKey: .sku)

            id = try container.decode(String.self, forKey: .id)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)
        }
    }
}
