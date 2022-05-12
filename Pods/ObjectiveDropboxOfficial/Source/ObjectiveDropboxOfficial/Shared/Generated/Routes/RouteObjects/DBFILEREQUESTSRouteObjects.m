///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBFILEREQUESTSRouteObjects.h"
#import "DBFILEREQUESTSCountFileRequestsError.h"
#import "DBFILEREQUESTSCountFileRequestsResult.h"
#import "DBFILEREQUESTSCreateFileRequestError.h"
#import "DBFILEREQUESTSDeleteAllClosedFileRequestsError.h"
#import "DBFILEREQUESTSDeleteAllClosedFileRequestsResult.h"
#import "DBFILEREQUESTSDeleteFileRequestError.h"
#import "DBFILEREQUESTSDeleteFileRequestsResult.h"
#import "DBFILEREQUESTSFileRequest.h"
#import "DBFILEREQUESTSFileRequestDeadline.h"
#import "DBFILEREQUESTSFileRequestError.h"
#import "DBFILEREQUESTSGeneralFileRequestsError.h"
#import "DBFILEREQUESTSGetFileRequestError.h"
#import "DBFILEREQUESTSListFileRequestsContinueError.h"
#import "DBFILEREQUESTSListFileRequestsError.h"
#import "DBFILEREQUESTSListFileRequestsResult.h"
#import "DBFILEREQUESTSListFileRequestsV2Result.h"
#import "DBFILEREQUESTSUpdateFileRequestError.h"
#import "DBFILEREQUESTSUserAuthRoutes.h"
#import "DBRequestErrors.h"
#import "DBStoneBase.h"

@implementation DBFILEREQUESTSRouteObjects

static DBRoute *DBFILEREQUESTSCount;
static DBRoute *DBFILEREQUESTSCreate;
static DBRoute *DBFILEREQUESTSDelete_;
static DBRoute *DBFILEREQUESTSDeleteAllClosed;
static DBRoute *DBFILEREQUESTSGet;
static DBRoute *DBFILEREQUESTSListV2;
static DBRoute *DBFILEREQUESTSList;
static DBRoute *DBFILEREQUESTSListContinue;
static DBRoute *DBFILEREQUESTSUpdate;

+ (DBRoute *)DBFILEREQUESTSCount {
  if (!DBFILEREQUESTSCount) {
    DBFILEREQUESTSCount = [[DBRoute alloc] init:@"count"
                                     namespace_:@"file_requests"
                                     deprecated:@NO
                                     resultType:[DBFILEREQUESTSCountFileRequestsResult class]
                                      errorType:[DBFILEREQUESTSCountFileRequestsError class]
                                          attrs:@{
                                            @"auth" : @"user",
                                            @"host" : @"api",
                                            @"style" : @"rpc"
                                          }
                          dataStructSerialBlock:nil
                        dataStructDeserialBlock:nil];
  }
  return DBFILEREQUESTSCount;
}

+ (DBRoute *)DBFILEREQUESTSCreate {
  if (!DBFILEREQUESTSCreate) {
    DBFILEREQUESTSCreate = [[DBRoute alloc] init:@"create"
                                      namespace_:@"file_requests"
                                      deprecated:@NO
                                      resultType:[DBFILEREQUESTSFileRequest class]
                                       errorType:[DBFILEREQUESTSCreateFileRequestError class]
                                           attrs:@{
                                             @"auth" : @"user",
                                             @"host" : @"api",
                                             @"style" : @"rpc"
                                           }
                           dataStructSerialBlock:nil
                         dataStructDeserialBlock:nil];
  }
  return DBFILEREQUESTSCreate;
}

+ (DBRoute *)DBFILEREQUESTSDelete_ {
  if (!DBFILEREQUESTSDelete_) {
    DBFILEREQUESTSDelete_ = [[DBRoute alloc] init:@"delete"
                                       namespace_:@"file_requests"
                                       deprecated:@NO
                                       resultType:[DBFILEREQUESTSDeleteFileRequestsResult class]
                                        errorType:[DBFILEREQUESTSDeleteFileRequestError class]
                                            attrs:@{
                                              @"auth" : @"user",
                                              @"host" : @"api",
                                              @"style" : @"rpc"
                                            }
                            dataStructSerialBlock:nil
                          dataStructDeserialBlock:nil];
  }
  return DBFILEREQUESTSDelete_;
}

+ (DBRoute *)DBFILEREQUESTSDeleteAllClosed {
  if (!DBFILEREQUESTSDeleteAllClosed) {
    DBFILEREQUESTSDeleteAllClosed = [[DBRoute alloc] init:@"delete_all_closed"
                                               namespace_:@"file_requests"
                                               deprecated:@NO
                                               resultType:[DBFILEREQUESTSDeleteAllClosedFileRequestsResult class]
                                                errorType:[DBFILEREQUESTSDeleteAllClosedFileRequestsError class]
                                                    attrs:@{
                                                      @"auth" : @"user",
                                                      @"host" : @"api",
                                                      @"style" : @"rpc"
                                                    }
                                    dataStructSerialBlock:nil
                                  dataStructDeserialBlock:nil];
  }
  return DBFILEREQUESTSDeleteAllClosed;
}

+ (DBRoute *)DBFILEREQUESTSGet {
  if (!DBFILEREQUESTSGet) {
    DBFILEREQUESTSGet = [[DBRoute alloc] init:@"get"
                                   namespace_:@"file_requests"
                                   deprecated:@NO
                                   resultType:[DBFILEREQUESTSFileRequest class]
                                    errorType:[DBFILEREQUESTSGetFileRequestError class]
                                        attrs:@{
                                          @"auth" : @"user",
                                          @"host" : @"api",
                                          @"style" : @"rpc"
                                        }
                        dataStructSerialBlock:nil
                      dataStructDeserialBlock:nil];
  }
  return DBFILEREQUESTSGet;
}

+ (DBRoute *)DBFILEREQUESTSListV2 {
  if (!DBFILEREQUESTSListV2) {
    DBFILEREQUESTSListV2 = [[DBRoute alloc] init:@"list_v2"
                                      namespace_:@"file_requests"
                                      deprecated:@NO
                                      resultType:[DBFILEREQUESTSListFileRequestsV2Result class]
                                       errorType:[DBFILEREQUESTSListFileRequestsError class]
                                           attrs:@{
                                             @"auth" : @"user",
                                             @"host" : @"api",
                                             @"style" : @"rpc"
                                           }
                           dataStructSerialBlock:nil
                         dataStructDeserialBlock:nil];
  }
  return DBFILEREQUESTSListV2;
}

+ (DBRoute *)DBFILEREQUESTSList {
  if (!DBFILEREQUESTSList) {
    DBFILEREQUESTSList = [[DBRoute alloc] init:@"list"
                                    namespace_:@"file_requests"
                                    deprecated:@NO
                                    resultType:[DBFILEREQUESTSListFileRequestsResult class]
                                     errorType:[DBFILEREQUESTSListFileRequestsError class]
                                         attrs:@{
                                           @"auth" : @"user",
                                           @"host" : @"api",
                                           @"style" : @"rpc"
                                         }
                         dataStructSerialBlock:nil
                       dataStructDeserialBlock:nil];
  }
  return DBFILEREQUESTSList;
}

+ (DBRoute *)DBFILEREQUESTSListContinue {
  if (!DBFILEREQUESTSListContinue) {
    DBFILEREQUESTSListContinue = [[DBRoute alloc] init:@"list/continue"
                                            namespace_:@"file_requests"
                                            deprecated:@NO
                                            resultType:[DBFILEREQUESTSListFileRequestsV2Result class]
                                             errorType:[DBFILEREQUESTSListFileRequestsContinueError class]
                                                 attrs:@{
                                                   @"auth" : @"user",
                                                   @"host" : @"api",
                                                   @"style" : @"rpc"
                                                 }
                                 dataStructSerialBlock:nil
                               dataStructDeserialBlock:nil];
  }
  return DBFILEREQUESTSListContinue;
}

+ (DBRoute *)DBFILEREQUESTSUpdate {
  if (!DBFILEREQUESTSUpdate) {
    DBFILEREQUESTSUpdate = [[DBRoute alloc] init:@"update"
                                      namespace_:@"file_requests"
                                      deprecated:@NO
                                      resultType:[DBFILEREQUESTSFileRequest class]
                                       errorType:[DBFILEREQUESTSUpdateFileRequestError class]
                                           attrs:@{
                                             @"auth" : @"user",
                                             @"host" : @"api",
                                             @"style" : @"rpc"
                                           }
                           dataStructSerialBlock:nil
                         dataStructDeserialBlock:nil];
  }
  return DBFILEREQUESTSUpdate;
}

@end