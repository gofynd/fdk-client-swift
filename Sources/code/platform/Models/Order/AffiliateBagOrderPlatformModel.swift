

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var id: String

        public var sku: String

        public var quantity: Int

        public var priceEffective: Double

        public var avlQty: Int

        public var itemSize: String

        public var companyId: Int

        public var transferPrice: Int

        public var affiliateMeta: [String: Any]

        public var modifiedOn: String

        public var deliveryCharge: Double

        public var discount: Double

        public var storeId: Int

        public var amountPaid: Double

        public var affiliateStoreId: String

        public var unitPrice: Double

        public var identifier: [String: Any]

        public var pdfLinks: MarketPlacePdf?

        public var priceMarked: Double

        public var itemId: Int

        public var fyndStoreId: String

        public var hsnCodeId: String

        public var sellerIdentifier: String

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case sku

            case quantity

            case priceEffective = "price_effective"

            case avlQty = "avl_qty"

            case itemSize = "item_size"

            case companyId = "company_id"

            case transferPrice = "transfer_price"

            case affiliateMeta = "affiliate_meta"

            case modifiedOn = "modified_on"

            case deliveryCharge = "delivery_charge"

            case discount

            case storeId = "store_id"

            case amountPaid = "amount_paid"

            case affiliateStoreId = "affiliate_store_id"

            case unitPrice = "unit_price"

            case identifier

            case pdfLinks = "pdf_links"

            case priceMarked = "price_marked"

            case itemId = "item_id"

            case fyndStoreId = "fynd_store_id"

            case hsnCodeId = "hsn_code_id"

            case sellerIdentifier = "seller_identifier"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.id = id

            self.sku = sku

            self.quantity = quantity

            self.priceEffective = priceEffective

            self.avlQty = avlQty

            self.itemSize = itemSize

            self.companyId = companyId

            self.transferPrice = transferPrice

            self.affiliateMeta = affiliateMeta

            self.modifiedOn = modifiedOn

            self.deliveryCharge = deliveryCharge

            self.discount = discount

            self.storeId = storeId

            self.amountPaid = amountPaid

            self.affiliateStoreId = affiliateStoreId

            self.unitPrice = unitPrice

            self.identifier = identifier

            self.pdfLinks = pdfLinks

            self.priceMarked = priceMarked

            self.itemId = itemId

            self.fyndStoreId = fyndStoreId

            self.hsnCodeId = hsnCodeId

            self.sellerIdentifier = sellerIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            sku = try container.decode(String.self, forKey: .sku)

            quantity = try container.decode(Int.self, forKey: .quantity)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            companyId = try container.decode(Int.self, forKey: .companyId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            discount = try container.decode(Double.self, forKey: .discount)

            storeId = try container.decode(Int.self, forKey: .storeId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            itemId = try container.decode(Int.self, forKey: .itemId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var id: String

        public var sku: String

        public var quantity: Int

        public var priceEffective: Double

        public var avlQty: Int

        public var itemSize: String

        public var companyId: Int

        public var transferPrice: Int

        public var affiliateMeta: [String: Any]

        public var modifiedOn: String

        public var deliveryCharge: Double

        public var discount: Double

        public var storeId: Int

        public var amountPaid: Double

        public var affiliateStoreId: String

        public var unitPrice: Double

        public var identifier: [String: Any]

        public var pdfLinks: MarketPlacePdf?

        public var priceMarked: Double

        public var itemId: Int

        public var fyndStoreId: String

        public var hsnCodeId: String

        public var sellerIdentifier: String

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case sku

            case quantity

            case priceEffective = "price_effective"

            case avlQty = "avl_qty"

            case itemSize = "item_size"

            case companyId = "company_id"

            case transferPrice = "transfer_price"

            case affiliateMeta = "affiliate_meta"

            case modifiedOn = "modified_on"

            case deliveryCharge = "delivery_charge"

            case discount

            case storeId = "store_id"

            case amountPaid = "amount_paid"

            case affiliateStoreId = "affiliate_store_id"

            case unitPrice = "unit_price"

            case identifier

            case pdfLinks = "pdf_links"

            case priceMarked = "price_marked"

            case itemId = "item_id"

            case fyndStoreId = "fynd_store_id"

            case hsnCodeId = "hsn_code_id"

            case sellerIdentifier = "seller_identifier"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.id = id

            self.sku = sku

            self.quantity = quantity

            self.priceEffective = priceEffective

            self.avlQty = avlQty

            self.itemSize = itemSize

            self.companyId = companyId

            self.transferPrice = transferPrice

            self.affiliateMeta = affiliateMeta

            self.modifiedOn = modifiedOn

            self.deliveryCharge = deliveryCharge

            self.discount = discount

            self.storeId = storeId

            self.amountPaid = amountPaid

            self.affiliateStoreId = affiliateStoreId

            self.unitPrice = unitPrice

            self.identifier = identifier

            self.pdfLinks = pdfLinks

            self.priceMarked = priceMarked

            self.itemId = itemId

            self.fyndStoreId = fyndStoreId

            self.hsnCodeId = hsnCodeId

            self.sellerIdentifier = sellerIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            sku = try container.decode(String.self, forKey: .sku)

            quantity = try container.decode(Int.self, forKey: .quantity)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            companyId = try container.decode(Int.self, forKey: .companyId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            discount = try container.decode(Double.self, forKey: .discount)

            storeId = try container.decode(Int.self, forKey: .storeId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            itemId = try container.decode(Int.self, forKey: .itemId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
        }
    }
}
